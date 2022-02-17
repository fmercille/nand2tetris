import os
import argparse

from JackAnalyzer import JackAnalyzer
from JackGenerator import JackGenerator

class JackCompiler:
  def __init__(self, file_or_dir):
    self.analyzer = JackAnalyzer(file_or_dir)

  def compile(self, verbose):
    trees = self.analyzer.parse(verbose)

    for filename in trees.keys():
      tree = trees[filename]
      generator = JackGenerator(tree)
      code = generator.parseClass()

      with open(filename + ".vm", "w") as f:
        for line in code:
          f.write(line + "\n")

if __name__ == '__main__':
  argparser = argparse.ArgumentParser(description="Jack Compiler for the HACK machine")
  argparser.add_argument('input', help='Either a single .jack file, or a directory containing one or more .jack files')
  argparser.add_argument('-v', action='store_const', const=True, default=False, dest='verbose', help="Verbose. Generates intermediate XML files resulting from the parsing")
  args = argparser.parse_args()

  JackCompiler(args.input).compile(verbose=args.verbose)
