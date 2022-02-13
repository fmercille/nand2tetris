import os

from JackException import JackException, FileNotFoundException
from JackTokenizer import JackTokenizer
from CompilationEngine import CompilationEngine

class JackAnalyzer:
  def __init__(self, file_or_dir):
    if os.path.isfile(file_or_dir):
      if file_or_dir[-5:] == '.jack':
        self._files = [ file_or_dir ]
      else:
        raise JackException("Input file must have '.jack' extension")
    elif os.path.isdir(file_or_dir):
      self._files = [ f for f in os.listdir(file_or_dir) if os.path.isfile(os.path.join(file_or_dir, f) and f[-5:] == '.jack') ]
    else:
      raise FileNotFoundException(file_or_dir)

  def parse(self):
    for file in self._files:
      tokenizer = JackTokenizer(file)
      compiler = CompilationEngine(tokenizer)

      return compiler.compileClass()

if __name__ == '__main__':
  j = JackAnalyzer('../10/Square/Square.jack')
  output = j.parse()

  for l in output:
    print(l, end='\r\n')
