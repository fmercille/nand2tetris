import os
from enum import Enum
from JackException import JackException, FileNotFoundException, TokenNotFoundException
import re

class JackTokenType(Enum):
  KEYWORD           = 1 << 0
  SYMBOL            = 1 << 1
  INTEGER_CONSTANT  = 1 << 2
  STRING_CONSTANT   = 1 << 3
  IDENTIFIER        = 1 << 4

class JackToken:
  def __init__(self, type: JackTokenType, value: str):
    self.type = type
    self.value = value
  
  def __str__(self):
    return str(self.type) + ":" + self.value

  def fromString(string):
    if string in ['{','}','(',')','[',']','.',',',';','+','\\','-','*','/','&','|','<','>','=','~']:
      return JackToken(JackTokenType.SYMBOL, string)
    elif string in ['class','constructor','function','method','field','static','var','int','char','boolean','void','true','false','null','this','let','do','if','else','while','return']:
      return JackToken(JackTokenType.KEYWORD, string)

  def xml(self):
    value = self.value.replace('&', '&amp;').replace('"', '&quot;').replace('<', '&lt;').replace('>', '&gt;')
    if self.type == JackTokenType.KEYWORD:
      tags = ['<keyword>', '</keyword>']
    elif self.type == JackTokenType.SYMBOL:
      tags = ['<symbol>', '</symbol>']
    elif self.type == JackTokenType.INTEGER_CONSTANT:
      tags = ['<integerConstant>', '</integerConstant>']
    elif self.type == JackTokenType.STRING_CONSTANT:
      tags = ['<stringConstant>', '</stringConstant>']
    elif self.type == JackTokenType.IDENTIFIER:
      tags = ['<identifier>', '</identifier>']

    return tags[0] + " " + value + " " + tags[1]

class JackTokenizer :
  def __init__(self, filename):
    if not os.path.isfile(filename):
      raise FileNotFoundException(filename)

    self._code = ""

    with open(filename) as f:
      line = f.readline()
      while line:
        comment_index = line.find('//') # Remove all the "till end of line" comments

        if comment_index >= 0:
          line = line[:comment_index]

        line = line.strip()

        if len(line) > 0:
          self._code += line.strip() + " "

        line = f.readline()

    # Remove all the multiline comments
    start = self._code.find("/*")

    while start >= 0:
      end = self._code.find("*/", start+1)
      if end < 0:
        raise JackException("Reached end of file while attempting to close comment block")

      self._code = self._code[:start] + " " + self._code[end+2:]
      start = self._code.find("/*")

    self._build_regexps()
    self._tokenize()


  def hasMoreTokens(self):
    return self._current_index < len(self.tokens)

  def advance(self):
    self._current_index = self._current_index + 1
    self._next_index = self._current_index + 1

  def currentToken(self) -> JackToken:
    if self._current_index >= len(self.tokens):
      return None
    
    return self.tokens[self._current_index]

  def nextToken(self) -> JackToken:
    if self._next_index >= len(self.tokens):
      return None

    return self.tokens[self._next_index]

  def xml(self):
    _ret = []
    for token in self.tokens:
      _ret.append(token.xml())

    return _ret

  def _build_regexps(self):
    symbols = '[{}()\[\].,;+\-*/&|<>=~]'
    keywords = "class|constructor|function|method|field|static|var|int|char|boolean|void|true|false|null|this|let|do|if|else|while|return"
    keyword_regex = re.compile(r"^(" + keywords + ")(\\s|" + symbols + ")")
    symbol_regex = re.compile(r"^(" + symbols + ")")
    integer_regex = re.compile(r"^([0-9]+)")
    string_regex = re.compile(r'^"(([^"]|\")*?)"')
    identifier_regex = re.compile(r"^([A-Za-z][A-Za-z0-9]*)")

    self._regexps = {
      'keyword': keyword_regex,
      'symbol': symbol_regex,
      'integer': integer_regex,
      'string': string_regex,
      'identifier': identifier_regex
    }

  def _tokenize(self):
    self.tokens = []

    i = 0
    code = self._code.strip()

    try:
      while len(code) > 0:
        match = self._regexps['keyword'].match(code)
        match_length = 0
        if match is not None:
          token = JackToken(JackTokenType.KEYWORD, match.groups()[0].strip())
          self.tokens.append(token)
        else:
          match = self._regexps['symbol'].match(code)
          if match is not None:
            token = JackToken(JackTokenType.SYMBOL, match.groups()[0].strip())
            self.tokens.append(token)
          else:
            match = self._regexps['integer'].match(code)
            if match is not None:
              token = JackToken(JackTokenType.INTEGER_CONSTANT, match.groups()[0].strip())
              self.tokens.append(token)
            else:
              match = self._regexps['string'].match(code)
              if match is not None:
                token = JackToken(JackTokenType.STRING_CONSTANT, match.groups()[0])
                self.tokens.append(token)
                match_length += 2 # To account for the two quotation marks
              else:
                match = self._regexps['identifier'].match(code)
                if match is not None:
                  token = JackToken(JackTokenType.IDENTIFIER, match.groups()[0].strip())
                  self.tokens.append(token)
                else:
                  raise TokenNotFoundException(code)

        match_length += len(match.groups()[0])
        code = code[match_length:].lstrip()
    except JackException as e:
      e.print()

    self._current_index = 0
    self._next_index = 1 if len(self.tokens) > 1 else None

if __name__ == '__main__':
  j = JackTokenizer('../10/Square/Main.jack')

  for t in j.tokens:
    print("type =", t.type, "  value =", t.value)