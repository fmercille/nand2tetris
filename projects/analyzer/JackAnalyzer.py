import os
import argparse

from xml.etree import ElementTree

from JackException import JackException, FileNotFoundException
from JackTokenizer import JackTokenizer
from JackParser import JackParser

class JackAnalyzer:
  def __init__(self, file_or_dir):
    if os.path.isfile(file_or_dir):
      if file_or_dir[-5:] == '.jack':
        self._files = [ file_or_dir ]
      else:
        raise JackException("Input file must have '.jack' extension")
    elif os.path.isdir(file_or_dir):
      self._files = [ os.path.join(file_or_dir, f) for f in os.listdir(file_or_dir) if os.path.isfile(os.path.join(file_or_dir, f)) and f[-5:] == '.jack' ]
    else:
      raise FileNotFoundException(file_or_dir)

  def parse(self, verbose=True):
    _ret = {}

    for file in self._files:
      tokenizer = JackTokenizer(file)
      compiler = JackParser(tokenizer)
      output = compiler.compileClass()

      if verbose:
        # Write the token file
        output_file = file[:-5] + 'T.xml' # Replace the .jack file extension by T.xml
        with open(output_file, 'w') as f:
          f.write("<tokens>" + '\r\n')
          for token in tokenizer.xml():
            f.write(token.strip() + '\r\n')
          f.write("</tokens>" + '\r\n')

        # Write the parse tree
        output_file = file[:-5] + '.xml' # Replace the .jack file extension by .xml
        with open(output_file, 'w') as f:
          for line in output:
            f.write(line + '\r\n')

      _ret[file[:-5]] = ElementTree.fromstringlist(output)

    return _ret

if __name__ == '__main__':
  argparser = argparse.ArgumentParser(description="Jack Analyzer for the HACK machine")
  argparser.add_argument('input', help='Either a single .jack file, or a directory containing one or more .jack files')
  args = argparser.parse_args()

  JackAnalyzer(args.input).parse(verbose=True)
