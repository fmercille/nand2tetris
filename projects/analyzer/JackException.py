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
