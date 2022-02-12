import os
from enum import Enum
from JackException import FileNotFoundException, TokenNotFoundException
import re

class JackTokenType(Enum):
  KEYWORD           = 1 << 0
  SYMBOL            = 1 << 1
  INTEGER_CONSTANT  = 1 << 2
  STRING_CONSTANT   = 1 << 3
  IDENTIFIER        = 1 << 4

class JackToken:
  def __init__(self, type, value):
    self.type = type
    self.value = value

class JackTokenizer :
  def __init__(self, filename):
    if not os.path.isfile(input):
      raise FileNotFoundException(filename)

    self._code = []

    with open(filename) as f:
      line = f.readline()
      while line:
        comment_index = line.find('//')

        if comment_index >= 0:
          line = line[:comment_index]

        line = line.strip()

        if len(line) > 0:
          self._code.append(line.strip())

        line = f.readline()

    self._build_regexps()
    self._tokenize()


  def hasMoreTokens(self):
    return self._current_index < len(self.tokens)

  def advance(self):
    self._current_index = self._current_index + 1
    self._next_index = self._current_index + 1

  def currentToken(self):
    if self._current_index >= len(self.tokens):
      return None
    
    return self.tokens[self._current_index]

  def nextToken(self):
    if self._next_index >= len(self.tokens):
      return None

    return self.tokens[self._next_index]

  def _build_regexps(self):
    symbols = '[{}()\[\].,;+\-*/&|<>=~]'
    keywords = "class|constructor|function|method|field|static|var|int|char|boolean|void|true|false|null|this|let|do|if|else|while|return"
    keyword_regex = re.compile(r"^(" + keywords + ")(\\s|" + symbols + ")")
    symbol_regex = re.compile(r"^(" + symbols + ")")
    integer_regex = re.compile(r"^([0-9]+)")
    string_regex = re.compile(r'^"(([^"]|\")*)"')
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

    for line in range(len(self._code)):
      i = 0
      while i < len(line):
        match = self._regexps['keyword'].match(line)
        if match is not None:
          token = JackToken(JackTokenType.KEYWORD, match.groups[0].strip())
          self.tokens.append(token)
        else:
          match = self._regexps['symbol'].match(line)
          if match is not None:
            token = JackToken(JackTokenType.SYMBOL, match.groups[0].strip())
            self.tokens.append(token)
          else:
            match = self._regexps['integer'].match(line)
            if match is not None:
              token = JackToken(JackTokenType.INTEGER_CONSTANT, match.groups[0].strip())
              self.tokens.append(token)
            else:
              match = self._regexps['string'].match(line)
              if match is not None:
                token = JackToken(JackTokenType.STRING_CONSTANT, match.groups[0].strip())
                self.tokens.append(token)
                i += 2 # To account for the two quotation marks
              else:
                match = self._regexps['identifier'].match(line)
                if match is not None:
                  token = JackToken(JackTokenType.IDENTIFIER, match.groups[0].strip())
                  self.tokens.append(token)
                else:
                  raise TokenNotFoundException(line)

        i += len(match.groups[0])
    
    self._current_index = 0
    self._next_index = 1 if len(self.tokens) > 1 else None
