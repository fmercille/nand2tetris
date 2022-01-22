#!/bin/env python3

import argparse
import os.path
import sys
import re

import command
import code_writer
from globals import Globals

#####################################################################################################
if __name__ == '__main__':
    argparser = argparse.ArgumentParser(description='VM Translator for the HACK machine')
    argparser.add_argument('vm')
    argparser.add_argument('-o', default=None, help='Output file name (default: [vm_file].asm)')
    argparser.add_argument('-v', action='store_const', const=True, default=False, dest='debug')
    args = argparser.parse_args()

    if args.vm[-3:] != '.vm':
        print("Input file must have '.vm' file extension")
        sys.exit(1)

    if not os.path.isfile(args.vm):
        print("File not found:", args.vm)
        sys.exit(1)

    Globals.filename = os.path.basename(args.vm[0:-3])

    output_file = args.o
    if output_file is None:
        output_file = args.vm[0:-3] + '.asm'


    commands = []
    asm = []

    # Read the input file and store the relevant lines as code
    with open(args.vm) as infile:
        lineno = 0
        for line in infile:
            try:
                c = command.Command.parse(line.strip(), lineno)

                if c is not None:
                    lineno += 1
                    commands.append(c)

            except command.ParseError as e:
                print("Parse error:'", e.message, "' at line", lineno, file=sys.stderr)
                sys.exit(1)

    if args.debug:
        print("======== VM ========")
        for c in commands:
            print(c.to_string())
        print("======================")
        print()

    cmdno = 0
    for c in commands:
        cmdno += 1
        try:
            asm_code = code_writer.CodeWriter.write(c)

            if asm_code is not None:
                asm += asm_code
        except code_writer.NotImplementedError as e:
            print("Implementation error:", e.message, " at line", cmdno, file=sys.stderr)
            sys.exit(1)
        except command.ParseError as e:
            print("Parse error:'", e.message, "' at line", lineno, file=sys.stderr)
            sys.exit(1)

    with open(output_file, 'w') as f:
        for asm_line in asm:
            f.write(asm_line + "\n")
