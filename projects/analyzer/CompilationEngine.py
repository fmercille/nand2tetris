from JackException import JackException, ParseError, TokenNotFoundException
from JackTokenizer import JackTokenizer, JackTokenType, JackToken

class CompilationEngine:
  tokens = {
    'static': JackToken(JackTokenType.KEYWORD, 'static'),
    'field': JackToken(JackTokenType.KEYWORD, 'field'),
    'constructor': JackToken(JackTokenType.KEYWORD, 'constructor'),
    'function': JackToken(JackTokenType.KEYWORD, 'function'),
    'method': JackToken(JackTokenType.KEYWORD, 'method'),
  }

  def __init__(self, tokenizer: JackTokenizer):
    self._tokenizer = tokenizer

  ###################################################################
  # PROGRAM STRUCTURE
  ###################################################################
  def compileClass(self):
    inner_xml = []

    inner_xml.append(self.eat_keyword('class'))
    inner_xml.append(self.eat_identifier())
    inner_xml.append(self.eat_symbol('{'))

    while self.peek_current(expectedTokenStrings=['static', 'field']):
      inner_xml += self.compileClassVarDec()

    while self.peek_current(expectedTokenStrings=['constructor', 'function', 'method']):
      inner_xml += self.compileSubroutineDec()

    inner_xml.append(self.eat_symbol('}'))

    return ["<class>"] + self.indent(inner_xml) + ["</class>"]

  def compileClassVarDec(self):
    inner_xml = []

    inner_xml.append(self.eat_keyword(keywords=['static', 'field']))

    if self.peek_current_type():
      inner_xml.append(self.eat_type())

    inner_xml.append(self.eat_identifier())

    while self.peek_current(','):
      inner_xml.append(self.eat_symbol(','))
      inner_xml.append(self.eat_identifier())

    inner_xml.append(self.eat_symbol(';'))

    return ["<classVarDec>"] + self.indent(inner_xml) + ["</classVarDec>"]

  def compileSubroutineDec(self):
    inner_xml = []

    inner_xml.append(self.eat_keyword(keywords=['constructor', 'function', 'method']))

    if self.peek_current_type():
      inner_xml.append(self.eat_type())
    elif self.peek_current('void'):
      inner_xml.append(self.eat_keyword('void'))

    inner_xml.append(self.eat_identifier())
    inner_xml.append(self.eat_symbol('('))
    inner_xml += self.compileParameterList()
    inner_xml.append(self.eat_symbol(')'))
    inner_xml += self.compileSubroutineBody()

    return ["<subroutineDec>"] + self.indent(inner_xml) + ["</subroutineDec>"]

  def compileParameterList(self):
    inner_xml = []

    while self.peek_current_type():
      inner_xml.append(self.eat_type())

      if self.peek_current(',') and self.peek_next_type():
        inner_xml.append(self.eat_symbol(','))

    return ["<parameterList>"] + self.indent(inner_xml) + ["</parameterList>"]

  def compileSubroutineBody(self):
    inner_xml = []

    inner_xml.append(self.eat_symbol('{'))

    while self.peek_current('var'):
      inner_xml += self.compileVarDec()

    while self.peek_current_statement():
      inner_xml += self.compileStatements()

    inner_xml.append(self.eat_symbol('}'))

    return ["<subroutineBody>"] + self.indent(inner_xml) + ["</subroutineBody>"]

  def compileVarDec(self):
    inner_xml = []

    inner_xml.append(self.eat_keyword('var'))
    inner_xml.append(self.eat_type())
    inner_xml.append(self.eat_identifier())

    while self.peek_current(','):
      inner_xml.append(self.eat_symbol(','))
      inner_xml.append(self.eat_identifier())

    inner_xml.append(self.eat_symbol(';'))

    return ["<varDec>"] + self.indent(inner_xml) + ["</varDec>"]


  ###################################################################
  # STATEMENTS
  ###################################################################
  def compileStatements(self):
    inner_xml = []

    while self.peek_current(expectedTokenStrings=['let', 'if', 'while', 'do', 'return']):
      token = self._tokenizer.currentToken()

      if token.value == 'let':
        inner_xml += self.compileLetStatement()
      elif token.value == 'if':
        inner_xml += self.compileIfStatement()
      elif token.value == 'while':
        inner_xml += self.compileWhileStatement()
      elif token.value == 'do':
        inner_xml += self.compileDoStatement()
      elif token.value == 'return':
        inner_xml += self.compileReturnStatement()

    return ["<statements>"] + self.indent(inner_xml) + ["</statements>"]

  def compileLetStatement(self):
    inner_xml = []

    inner_xml.append(self.eat_keyword('let'))
    inner_xml.append(self.eat_identifier())

    if self.peek_current('['):
      inner_xml.append(self.eat_symbol('['))
      inner_xml += self.compileExpression()
      inner_xml.append(self.eat_symbol(']'))

    inner_xml.append(self.eat_symbol('='))
    inner_xml += self.compileExpression()
    inner_xml.append(self.eat_symbol(';'))

    return ["<letStatement>"] + self.indent(inner_xml) + ["</letStatement>"]

  def compileIfStatement(self):
    inner_xml = []

    inner_xml.append(self.eat_keyword('if'))

    inner_xml.append(self.eat_symbol('('))
    inner_xml += self.compileExpression()
    inner_xml.append(self.eat_symbol(')'))

    inner_xml.append(self.eat_symbol('{'))
    inner_xml += self.compileStatements()
    inner_xml.append(self.eat_symbol('}'))

    if self.peek_current('else'):
      inner_xml.append(self.eat_keyword('else'))
      inner_xml.append(self.eat_symbol('{'))
      inner_xml += self.compileStatements()
      inner_xml.append(self.eat_symbol('}'))

    return ["<ifStatement>"] + self.indent(inner_xml) + ["</ifStatement>"]

  def compileWhileStatement(self):
    inner_xml = []

    inner_xml.append(self.eat_keyword('while'))

    inner_xml.append(self.eat_symbol('('))
    inner_xml += self.compileExpression()
    inner_xml.append(self.eat_symbol(')'))

    inner_xml.append(self.eat_symbol('{'))
    inner_xml += self.compileStatements()
    inner_xml.append(self.eat_symbol('}'))

    return ["<whileStatement>"] + self.indent(inner_xml) + ["</whileStatement>"]

  def compileDoStatement(self):
    inner_xml = []

    inner_xml.append(self.eat_keyword('do'))

    if self.peek_next('.'):
      inner_xml.append(self.eat_identifier())
      inner_xml.append(self.eat_symbol('.'))
      inner_xml.append(self.eat_identifier())
    else:
      inner_xml.append(self.eat_identifier())

    inner_xml.append(self.eat_symbol('('))
    inner_xml += self.compileExpressionList()
    inner_xml.append(self.eat_symbol(')'))

    inner_xml.append(self.eat_symbol(';'))

    return ["<doStatement>"] + self.indent(inner_xml) + ["</doStatement>"]

  def compileReturnStatement(self):
    inner_xml = []

    inner_xml.append(self.eat_keyword('return'))

    if self.peek_current_term():
      inner_xml += self.compileExpression(optional=True)

    inner_xml.append(self.eat_symbol(';'))

    return ["<returnStatement>"] + self.indent(inner_xml) + ["</returnStatement>"]

  ###################################################################
  # EXPRESSIONS
  ###################################################################
  def compileExpression(self, optional=False):
    inner_xml = []

    inner_xml += self.compileTerm()

    while self.peek_current_operator():
      inner_xml.append(self.eat_operator())
      inner_xml += self.compileTerm()

    return ["<expression>"] + self.indent(inner_xml) + ["</expression>"]

  def compileExpressionList(self):
    inner_xml = []

    if self.peek_current_term():
      inner_xml += self.compileExpression()

      while self.peek_current(','):
        inner_xml.append(self.eat_symbol(','))
        inner_xml += self.compileExpression()

    return ["<expressionList>"] + self.indent(inner_xml) + ["</expressionList>"]

  def compileTerm(self):
    inner_xml = []

    # Integer constant
    if self._tokenizer.currentToken().type == JackTokenType.INTEGER_CONSTANT:
      inner_xml.append(self.eat_integer_constant())

    # String constant
    elif self._tokenizer.currentToken().type == JackTokenType.STRING_CONSTANT:
      inner_xml.append(self.eat_string_constant())

    # Keyword constant
    elif self.peek_current(expectedTokenStrings=['true', 'false', 'null', 'this']):
      inner_xml.append(self.eat_keyword_constant())

    # varName
    elif self._tokenizer.currentToken().type == JackTokenType.IDENTIFIER:
      if self.peek_next('['): # varName '[' expression ']'
        inner_xml.append(self.eat_identifier())
        inner_xml.append(self.eat_symbol('['))
        inner_xml += self.compileExpression()
        inner_xml.append(self.eat_symbol(']'))
      elif self.peek_next('('): # subroutineCall: subroutineName '(' expressionList ')'
        inner_xml.append(self.eat_identifier())
        inner_xml.append(self.eat_symbol('('))
        inner_xml += self.compileExpressionList()
        inner_xml.append(self.eat_symbol(')'))
      elif self.peek_next('.'): # subroutineCall: ( className | varName ) '.' subroutineName '(' expressionList ')'
        inner_xml.append(self.eat_identifier())
        inner_xml.append(self.eat_symbol('.'))
        inner_xml.append(self.eat_identifier())
        inner_xml.append(self.eat_symbol('('))
        inner_xml += self.compileExpressionList()
        inner_xml.append(self.eat_symbol(')'))
      else: # varName
        inner_xml.append(self.eat_identifier())

    elif self.peek_current('('): # '(' expression ')'
      inner_xml.append(self.eat_symbol('('))
      inner_xml += self.compileExpression()
      inner_xml.append(self.eat_symbol(')'))
    elif self.peek_current(expectedTokenStrings=['-', '~']): # unaryOp term
      inner_xml.append(self.eat_symbol(symbols=['-', '~']))
      inner_xml += self.compileTerm()

    return ["<term>"] + self.indent(inner_xml) + ["</term>"]





  ###################################################################
  # HELPER METHODS
  ###################################################################

  def eat_keyword(self, keyword=None, keywords=[]):
    token = self._tokenizer.currentToken()

    if keyword is not None:
      if token.type != JackTokenType.KEYWORD or token.value != keyword:
        raise ParseError(JackToken(JackTokenType.KEYWORD, keyword), token)
    elif len(keywords) > 0:
      if token.type != JackTokenType.KEYWORD or token.value not in keywords:
        raise ParseError(JackToken(JackTokenType.KEYWORD, None), token)

    self._tokenizer.advance()    
    return "<keyword> " + token.value + " </keyword>"

  def eat_identifier(self):
    token = self._tokenizer.currentToken()
    if token.type != JackTokenType.IDENTIFIER:
      raise ParseError(JackToken(JackTokenType.IDENTIFIER, None), token)

    self._tokenizer.advance()    
    return "<identifier> " + token.value + " </identifier>"

  def eat_symbol(self, symbol=None, symbols=[]):
    token = self._tokenizer.currentToken()

    if symbol is not None:
      if token.type != JackTokenType.SYMBOL or token.value != symbol:
        raise ParseError(JackToken(JackTokenType.SYMBOL, symbol), token)
    elif len(symbols) > 0:
      if token.type != JackTokenType.SYMBOL or token.value not in symbols:
        raise ParseError(JackToken(JackTokenType.SYMBOL, None), token)

    value = token.value

    if value == '<':
      value = '&lt;'
    elif value == '>':
      value = '&gt;'
    elif value == '&':
      value = '&amp;'

    self._tokenizer.advance()    
    return "<symbol> " + value + " </symbol>"

  def eat_type(self):
    if self._tokenizer.currentToken().type == JackTokenType.KEYWORD:
      return self.eat_keyword(keywords=['void', 'int', 'char', 'boolean'])
    else:
      return self.eat_identifier()

  def eat_operator(self):
    return self.eat_symbol(symbols=['+', '-', '*', '/', '&', '|', '<', '>', '='])

  def eat_integer_constant(self):
    token = self._tokenizer.currentToken()
    if token.type != JackTokenType.INTEGER_CONSTANT:
      raise ParseError(JackToken(JackTokenType.INTEGER_CONSTANT, None), token)

    self._tokenizer.advance()    
    return "<integerConstant> " + token.value + " </integerConstant>"

  def eat_string_constant(self):
    token = self._tokenizer.currentToken()
    if token.type != JackTokenType.STRING_CONSTANT:
      raise ParseError(JackToken(JackTokenType.STRING_CONSTANT, None), token)

    value = token.value.replace('"', '&quot;')

    self._tokenizer.advance()    
    return "<stringConstant> " + value + " </stringConstant>"

  def eat_keyword_constant(self):
    return self.eat_keyword(keywords=['true', 'false', 'null', 'this'])


  def indent(self, xml):
    return ["  " + element for element in xml]
  
  def peek_current(self, expectedTokenString=None, expectedTokenStrings=[]):
    return self._peek(self._tokenizer.currentToken(), expectedTokenString, expectedTokenStrings)

  def peek_next(self, expectedTokenString=None, expectedTokenStrings=[]):
    return self._peek(self._tokenizer.nextToken(), expectedTokenString, expectedTokenStrings)

  def _peek(self, token, expectedTokenString=None, expectedTokenStrings=[]):
    if token is None:
      return False

    if expectedTokenString is not None:
      expectedToken = JackToken.fromString(expectedTokenString)
      return token.type == expectedToken.type and token.value == expectedToken.value
    else:
      return token.value in expectedTokenStrings

  def peek_current_type(self):
    return self._peek_type(self._tokenizer.currentToken())

  def peek_next_type(self):
    return self._peek_type(self._tokenizer.nextToken())

  def _peek_type(self, token):
    if token.type == JackTokenType.KEYWORD:
      return token.value in ['int', 'char', 'boolean']
    else:
      return token.type == JackTokenType.IDENTIFIER

  def peek_current_statement(self):
    return self._tokenizer.currentToken().type == JackTokenType.KEYWORD and self._tokenizer.currentToken().value in ['let', 'if', 'while', 'do', 'return']

  def peek_current_operator(self):
    return self._tokenizer.currentToken().type == JackTokenType.SYMBOL and self._tokenizer.currentToken().value in ['+', '-', '*', '/', '&', '|', '<', '>', '=']

  def peek_current_term(self):
    # Integer constant
    if self._tokenizer.currentToken().type == JackTokenType.INTEGER_CONSTANT:
      return True

    # String constant
    elif self._tokenizer.currentToken().type == JackTokenType.STRING_CONSTANT:
      return True

    # Keyword constant
    elif self.peek_current(expectedTokenStrings=['true', 'false', 'null', 'this']):
      return True

    # varName
    elif self._tokenizer.currentToken().type == JackTokenType.IDENTIFIER:
      return True

    elif self.peek_current('('): # '(' expression ')'
      return True
    elif self.peek_current(expectedTokenStrings=['-', '~']): # unaryOp term
      return True
