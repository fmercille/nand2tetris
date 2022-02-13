class JackException(BaseException):
  def __init__(self, message):
    self.message = message

  def print(self):
    print(self.message)

class FileNotFoundException(JackException):
  def __init__(self, filename):
    self.message = "File " + filename + " not found"

class TokenNotFoundException(JackException):
  def __init__(self, line):
    self.message = "Could not find a valid token in line: '" + line + "'"

class ParseError(JackException):
  def __init__(self, expectedToken, tokenFound):
    if expectedToken.value is not None:
      self.message = "Parse error: Expected token '" + str(expectedToken) + "' but found token '" + str(tokenFound) + "' instead"
    else:
      self.message = "Parse error: Expected token of type '" + str(expectedToken.type) + "' but found token '" + str(tokenFound) + "' instead."