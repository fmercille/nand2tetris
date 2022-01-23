#!/bin/env python3

import argparse
import os.path
import sys

import code_writer
import file_processor

if __name__ == '__main__':
    argparser = argparse.ArgumentParser(description='VM Translator for the HACK machine')
    argparser.add_argument('input', help='Either a single .vm file, or a directory containing one or more .vm files')
    argparser.add_argument('-o', default=None, help='Output file name (default: [vm_file].asm)')
    argparser.add_argument('-v', action='store_const', const=True, default=False, dest='debug')
    args = argparser.parse_args()

    input_dir = None
    input_files = []
    output_file = args.o

    if os.path.isdir(args.input):
        vm_files = [f for f in os.listdir(args.input) if os.path.isfile(os.path.join(args.input, f)) and f[-3:] == '.vm']

        if len(vm_files) == 0:
            print(f"No .vm files found in {args.input}")
            sys.exit(1)

        input_files = [os.path.join(args.input, f) for f in vm_files]
        input_dir = args.input

        if output_file is None:
            output_basefile = os.path.basename(args.input.rstrip('/'))
            output_file = args.input.rstrip('/') + '/' + output_basefile + '.asm'

    elif os.path.isfile(args.input):
        if args.input[-3:] != '.vm':
            print("Input file must have '.vm' file extension")
            sys.exit(1)

        input_files.append(args.input)

        if output_file is None:
            output_file = args.input[0:-3] + '.asm'


    else:
        print("File not found:", args.input)
        sys.exit(1)

    asm = []

    if input_dir is None: # Processing a single file
        asm = file_processor.translate_file(input_files[0], args.debug)
    else: # Processing a directory
        asm += code_writer.CodeWriter.bootstrap()
        for f in input_files:
            asm += file_processor.translate_file(f, args.debug)

    if(args.debug):
        for asm_line in asm:
            print(asm_line)

    with open(output_file, 'w') as f:
        for asm_line in asm:
            f.write(asm_line + "\n")
