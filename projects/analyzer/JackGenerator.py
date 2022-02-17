from JackException import ParseTreeError

from xml.etree import ElementTree
from functools import reduce

operator_code = {
  '+': 'add',
  '-': 'sub',
  '*': 'call Math.multiply 2',
  '/': 'call Math.divide 2',
  '&': 'and',
  '|': 'or',
  '<': 'lt',
  '>': 'gt',
  '=': 'eq'
}

unary_operator_code = {
  '-': 'neg',
  '~': 'not'
}

class Symbol:
  def __init__(self, name: str, type: str, kind: str, index: int):
    self.name = name
    self.type = type
    self.kind = kind
    self.index = index

class SymbolTable:
  def __init__(self):
    self.class_symbols = {}
    self.method_symbols = {}
    self.class_name = None

  def reset_method(self):
    self.method_symbols.clear()

  def define(self, scope: str, name: str, type: str, kind: str):
    symbols_table = self.class_symbols if scope == 'class' else self.method_symbols
    index = reduce(lambda a, b: a + 1 if b.kind == kind else a, symbols_table.values(), 0)
    symbols_table[name] = Symbol(name, type, kind, index)

  def count(self, scope: str, kind: str):
    symbols_table = self.class_symbols if scope == 'class' else self.method_symbols
    return reduce(lambda a, b: a + 1 if b.kind == kind else a, symbols_table.values(), 0)

  def type_of(self, name: str):
    if name in self.method_symbols:
      return self.method_symbols[name].type
    elif name in self.class_symbols:
      return self.class_symbols[name].type
    else:
      return None

  def kind_of(self, name: str):
    if name in self.method_symbols:
      return self.method_symbols[name].kind
    elif name in self.class_symbols:
      return self.class_symbols[name].kind
    else:
      return None

  def index_of(self, name: str):
    if name in self.method_symbols:
      return self.method_symbols[name].index
    elif name in self.class_symbols:
      return self.class_symbols[name].index
    else:
      return None

  def scope_of(self, name: str):
    if name in self.method_symbols:
      return 'method'
    elif name in self.class_symbols:
      return 'class'
    else:
      return None

class JackGenerator:
  root: ElementTree = None
  labelCount = 0

  def __init__(self, parseTree: ElementTree):
    self.root = parseTree
    self.symbols = SymbolTable()
    self.class_name = None

  def parseClass(self):
    code = []
    i = 0
    scope = 'class'

    # Expect the first 3 children to be 'class', name of the class, then symbol {
    for child in self.root:
      if i == 0: # class
        if child.tag != 'keyword':
          raise ParseTreeError('keyword', self.root.tag)

      elif i == 1: # Name of the class
        if child.tag != 'identifier':
          raise ParseTreeError('identifier', self.root.tag)

        self.class_name = child.text.strip()

      elif i == 2: # Symbol {
        if child.tag != 'symbol':
          raise ParseTreeError('symbol', self.root.tag)

      elif child.tag == 'classVarDec':
        self.parseClassVarDec(child)

      elif child.tag == 'subroutineDec':
        self.parseSubroutineDec(child, code)

      i += 1

    return code

  def parseClassVarDec(self, root):
    var_type = None
    var_kind = None
    scope = 'class'

    for child in root:
      if child.tag == 'keyword' and child.text.strip() == 'field':
        var_kind = 'field'

      elif child.tag == 'keyword' and child.text.strip() == 'static':
        var_kind = 'static'

      elif var_type is None:
        if child.tag == 'identifier' or child.tag == 'keyword':
          var_type = child.text.strip()

      else:
        if child.tag == 'identifier':
          self.symbols.define(scope, child.text.strip(), var_type, var_kind)


  def parseSubroutineDec(self, root, code):
    is_method = False
    self.symbols.reset_method()
    scope = 'method'
    method_name = None
    i = 0

    local_code = []

    # Expect the first 5 children to be keyword (function|method), keyword (return type), identifier (method name), symbol '(', parameterList
    for child in root:
      if i == 0: # (function|method)
        if child.tag != 'keyword':
          raise ParseTreeError('keyword', self.root.tag)

        if child.text.strip() == 'function':
          scope = 'method'
        elif child.text.strip() == 'method':
          self.symbols.define(scope, 'this', self.class_name, 'argument') # This has to be argument 0
          local_code.append('push argument 0')
          local_code.append('pop pointer 0')
        elif child.text.strip() == 'constructor':
          local_code.append('push constant {}'.format(self.symbols.count('class', 'field')))
          local_code.append('call Memory.alloc 1')
          local_code.append('pop pointer 0')
        else:
          raise ParseTreeError('keyword', self.root.tag)

      elif i == 1: # return type, we can safely ignore
        if child.tag not in [ 'keyword', 'identifier' ]:
          raise ParseTreeError('keyword', self.root.tag)

      elif i == 2: # Method name
        if child.tag != 'identifier':
          raise ParseTreeError('identifier', self.root.tag)

        method_name = child.text.strip()

      elif i == 3: # Symbol '('
        if child.tag != 'symbol':
          raise ParseTreeError('symbol', self.root.tag)

      elif i == 4: # Parameter list
        if child.tag != 'parameterList':
          raise ParseTreeError('parameterList', self.root.tag)

        self.parseParameterList(child)

      elif i == 5: # Symbol ')'
        if child.tag != 'symbol':
          raise ParseTreeError('symbol', self.root.tag)

      elif i == 6: # Subroutine body
        if child.tag != 'subroutineBody':
          raise ParseTreeError('subroutineBody', self.root.tag)

        num_vars = self.parseSubroutineBody(child, local_code)

      i += 1

    code.append("function {}.{} {}".format(self.class_name, method_name, num_vars))
    code += local_code

  def parseParameterList(self, root):
    var_type = None
    scope = 'method'

    for child in root:
      if var_type is None:
        if child.tag == 'identifier' or child.tag == 'keyword':
          var_type = child.text.strip()

      else:
        if child.tag == 'identifier':
          self.symbols.define(scope, child.text.strip(), var_type, 'argument')

        elif child.tag == 'symbol' and child.text.strip() == ',':
          var_type = None

  def parseSubroutineBody(self, root, code): # Returns number of local variables
    i = 0
    num_vars = 0

    for child in root:
      if i == 0: # Symbol '{'
        if child.tag != 'symbol':
          raise ParseTreeError('symbol', child.tag)

      if child.tag == 'varDec':
        num_vars += self.parseVarDec(child)

      if child.tag == 'statements':
        self.parseStatements(child, code)

      i += 1

    return num_vars

  def parseVarDec(self, root):
    var_type = None
    scope = 'method'
    num_vars = 0

    for child in root:
      if child.tag == 'keyword' and child.text.strip() == 'var':
        continue

      if var_type is None:
        if child.tag == 'identifier' or child.tag == 'keyword':
          var_type = child.text.strip()

      else:
        if child.tag == 'identifier':
          self.symbols.define(scope, child.text.strip(), var_type, 'local')
          num_vars += 1

    return num_vars

  def parseStatements(self, root, code):
    for child in root:
      if child.tag == 'doStatement':
        self.parseDoStatement(child, code)
      
      elif child.tag == 'letStatement':
        self.parseLetStatement(child, code)

      elif child.tag == 'whileStatement':
        self.parseWhileStatement(child, code)

      elif child.tag == 'ifStatement':
        self.parseIfStatement(child, code)

      elif child.tag == 'returnStatement':
        self.parseReturnStatement(child, code)

  def parseDoStatement(self, root, code):
    obj = ""
    method = ""
    local_code = []

    for child in root:
      if child.tag == 'keyword' and child.text.strip() == 'do':
        continue

      if child.tag == 'symbol' and child.text.strip() in ['(', ')', ';']:
        continue

      if child.tag == 'identifier':
        method += child.text.strip()

      if child.tag == 'symbol' and child.text.strip() == '.':
        obj = method
        method = ""

      if child.tag == 'expressionList':
        self.parseExpressionList(child, local_code)
        num_arguments = len(child.findall('expression'))

    if len(obj) > 0:
      if self.symbols.type_of(obj) is not None:
        kind = 'this' if self.symbols.kind_of(obj) == 'field' else self.symbols.kind_of(obj)
        local_code = ['push {} {}'.format(kind, self.symbols.index_of(obj))] + local_code
        obj = self.symbols.type_of(obj)
        num_arguments += 1
    else: # We assume the object is this
      local_code = ['push pointer 0'] + local_code
      obj = self.class_name
      num_arguments += 1

    local_code.append("call {}.{} {}".format(obj, method, num_arguments))
    local_code.append("pop temp 0")
    code += local_code

  def parseLetStatement(self, root, code):
    dest = None
    dest_is_array = False
    dest_complete = False

    for child in root:
      if child.tag == 'keyword':
        pass

      elif child.tag == 'identifier':
        dest = child.text.strip()
      
      elif child.tag == 'symbol':
        if child.text.strip() == '[':
          dest_is_array = True

        elif child.text.strip() == '=':
          dest_complete = True

      elif child.tag == 'expression':
        if dest_complete:
          if dest_is_array:
            self.parseExpression(child, code)
            code.append('pop temp 0')
            code.append('pop pointer 1')
            code.append('push temp 0')
            code.append('pop that 0')
          else:
            self.parseExpression(child, code)
            kind = 'this' if self.symbols.kind_of(dest) == 'field' else self.symbols.kind_of(dest)
            code.append("pop {} {}".format(kind, self.symbols.index_of(dest)))
        else:
          if dest_is_array:
            kind = 'this' if self.symbols.kind_of(dest) == 'field' else self.symbols.kind_of(dest)
            code.append('push {} {}'.format(kind, self.symbols.index_of(dest)))
            self.parseExpression(child, code)
            code.append('add')

  def parseWhileStatement(self, root, code):
    start_label = self._get_label()
    end_label = self._get_label()

    code.append('label {}'.format(start_label))

    for child in root:
      if child.tag == 'keyword':
        pass

      elif child.tag == 'symbol':
        pass

      elif child.tag == 'expression':
        self.parseExpression(child, code)
        code.append('not')
        code.append('if-goto {}'.format(end_label))
      
      elif child.tag == 'statements':
        self.parseStatements(child, code)
        code.append('goto {}'.format(start_label))

    code.append('label {}'.format(end_label))

  def parseIfStatement(self, root, code):
    if_not_label = self._get_label()
    exit_if_label = None

    for child in root:
      if child.tag == 'keyword':
        if child.text.strip() == 'else':
          exit_if_label = self._get_label()
          code.append('goto {}'.format(exit_if_label))
          code.append('label {}'.format(if_not_label))

      elif child.tag == 'symbol':
        if child.text.strip() == '}' and exit_if_label is not None: # Closing bracket of an else block
          code.append('label {}'.format(exit_if_label))

      elif child.tag == 'expression':
        self.parseExpression(child, code)
        code.append('not')
        code.append('if-goto {}'.format(if_not_label))
      
      elif child.tag == 'statements':
        self.parseStatements(child, code)

    if exit_if_label is None: # There were no else block
      code.append('label {}'.format(if_not_label))

  def parseReturnStatement(self, root, code):
    has_expression = False

    for child in root:
      if child.tag == 'expression':
        has_expression = True
        self.parseExpression(child, code)

    if not has_expression:
      code.append('push constant 0')

    code.append('return')

  def parseExpressionList(self, root, code):
    for child in root:
      if child.tag == 'expression':
        self.parseExpression(child, code)

  def parseExpression(self, root, code):
    op = []

    for child in root:
      if child.tag == 'term':
        self.parseTerm(child, code)

      elif child.tag == 'symbol':
        op.append(child.text.strip())

    while len(op) > 0:
      code.append(operator_code[op.pop()])

  def parseTerm(self, root, code):
    identifier = { 'object': '', 'name': '', 'is_array': False, 'is_subroutine': False, 'num_arguments': 0, 'expression_code': [] }
    unary_op = ''

    for child in root:
      if len(unary_op) > 0 and child.tag != 'term':
        raise ParseTreeError('term', child.tag)

      elif child.tag == 'expression':
        self.parseExpression(child, code)

      elif child.tag == 'expressionList':
        self.parseExpressionList(child, identifier['expression_code'])
        identifier['num_arguments'] = len(child.findall('expression'))

      elif child.tag == 'integerConstant':
        code.append("push constant {}".format(child.text.strip()))

      elif child.tag == 'stringConstant':
        string = child.text[1:-1] # We must only remove the leading and trailing spaces
        code.append('push constant {}'.format(len(string)))
        code.append('call String.new 1')

        for c in string:
          code.append('push constant {}'.format(ord(c)))
          code.append('call String.appendChar 2')
        pass

      elif child.tag == 'keyword':
        if child.text.strip() in ['true', 'false', 'null']:
          code.append('push constant 0')

        if child.text.strip() == 'true':
          code.append('not')

        if child.text.strip() == 'this':
          code.append('push pointer 0')

      elif child.tag == 'identifier': # We store the identifier and we can only know what to do with it when we see the next child
        identifier['name'] += child.text.strip()

      elif child.tag == 'symbol':
        text = child.text.strip()

        if text == '[': # Going into an array
          identifier['is_array'] = True

        if text == '.': # Going into a subroutine call with class name prepended
          identifier['object'] = identifier['name']
          identifier['name'] = ''

        if text == '(':
          identifier['is_subroutine'] = True

        elif text in ['-', '~']: # Unary op
          unary_op = child.text.strip()

      elif child.tag == 'term':
        self.parseTerm(child, code)

        if unary_op in unary_operator_code:
          code.append(unary_operator_code[unary_op])
          unary_op = ''

    if len(identifier['name']) > 0: # We have seen an identifier and still need to process it
      if not identifier['is_array'] and not identifier['is_subroutine']:
        index = self.symbols.index_of(identifier['name'])
        kind = 'this' if self.symbols.kind_of(identifier['name']) == 'field' else self.symbols.kind_of(identifier['name'])
        code.append('push {} {}'.format(kind, index))
      elif identifier['is_subroutine']:
        index = self.symbols.index_of(identifier['object'])

        if index is None:
          object = identifier['object']
        else:
          object = self.symbols.type_of(identifier['object'])
          kind = 'this' if self.symbols.kind_of(identifier['object']) == 'field' else self.symbols.kind_of(identifier['object'])
          code.append('push {} {}'.format(kind, index))
          identifier['num_arguments'] += 1

        kind = 'this' if self.symbols.kind_of(identifier['name']) == 'field' else self.symbols.kind_of(identifier['name'])
        code += identifier['expression_code']
        code.append('call {}.{} {}'.format(object, identifier['name'], identifier['num_arguments']))
      elif identifier['is_array']:
        kind = 'this' if self.symbols.kind_of(identifier['name']) == 'field' else self.symbols.kind_of(identifier['name'])
        code.append('push {} {}'.format(kind, index))
        code.append('add')
        code.append('pop pointer 1')
        code.append('push that 0')


  def _get_label(self):
#    _ret = '__{}__LABEL__{}__'.format(self.class_name, JackGenerator.labelCount)
    _ret = 'LABEL{}'.format(JackGenerator.labelCount)
    JackGenerator.labelCount += 1
    return _ret



if __name__ == '__main__':
  from JackAnalyzer import JackAnalyzer

  trees = JackAnalyzer('../11/Pong/').parse(True)
  for filename in trees.keys():
    tree = trees[filename]
    generator = JackGenerator(tree)
    code = generator.parseClass()

    with open(filename + ".vm", "w") as f:
      for line in code:
        f.write(line + "\n")
