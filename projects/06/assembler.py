#!/bin/env python3

import argparse
import os.path
import sys
import re

# Initializing the symbols table
symbols = {
        'R0': 0,
        'R1': 1,
        'R2': 2,
        'R3': 3,
        'R4': 4,
        'R5': 5,
        'R6': 6,
        'R7': 7,
        'R8': 8,
        'R9': 9,
        'R10': 10,
        'R11': 11,
        'R12': 12,
        'R13': 13,
        'R14': 14,
        'R15': 15,
        'SCREEN': 16384,
        'KBD': 24576,
        'SP': 0,
        'LCL': 1,
        'ARG': 2,
        'THIS': 3,
        'THAT': 4
}

# Compiling the various regular expressions that will be used to parse the input
regexp = {
    'label': re.compile(r"^\(([-0-9A-Za-z_.$]+)\)$"),
    'a_command': re.compile(r"^@([-0-9A-Za-z_.$]+)$"),
    'c_command': re.compile(r"^((A?M?D?)=)?(0|-?1|[!-]?[ADM]|[ADM][+-]1|D[+-][AM]|[AM]-D|D[&|]M)(;J(GT|EQ|GE|LT|NE|LE|MP))?$"),
    'variable': re.compile(r"^@([-0-9A-Za-z_.$]*[A-Za-z.$][-0-9A-Za-z_.$]*)$"),
}

def to_bin(s): # Helper function to convert a decimal string to a binary string
    return '{0:b}'.format(int(s))

def a_command(match, debug=False):
    val = match[1]
    if val.isdecimal():
        address = val
    else:
        address = symbols[val]

    if debug:
        print("** C command **")
        print("isdecimal", val.isdecimal())
        print("address", address)
        print("command", '0' + to_bin(address).zfill(15))

    return '0' + to_bin(address).zfill(15)

def c_command(match, debug=False):
    def dest(token):
        dest_map = {
            None: 0,
            'M': 1,
            'D': 2,
            'MD': 3,
            'A': 4,
            'AM': 5,
            'AD': 6,
            'AMD': 7
        }

        return dest_map[token]

    def comp(token):
        comp_map = {
            '0'  : 0b0101010,
            '1'  : 0b0111111,
            '-1' : 0b0111010,
            'D'  : 0b0001100,
            'A'  : 0b0110000,
            'M'  : 0b1110000,
            '!D' : 0b0001101,
            '!A' : 0b0110001,
            '!M' : 0b1110001,
            'D+1': 0b0011111,
            'A+1': 0b0110111,
            'M+1': 0b1110111,
            'D-1': 0b0001110,
            'A-1': 0b0110010,
            'M-1': 0b1110010,
            'D+A': 0b0000010,
            'D+M': 0b1000010,
            'D-A': 0b0010011,
            'D-M': 0b1010011,
            'A-D': 0b0000111,
            'M-D': 0b1000111,
            'D&A': 0b0000000,
            'D&M': 0b1000000,
            'D|A': 0b0010101,
            'D|M': 0b1010101,
        }
        return comp_map[token]

    def jump(token):
        jump_map = {
            None: 0,
            'GT': 1,
            'EQ': 2,
            'GE': 3,
            'LT': 4,
            'NE': 5,
            'LE': 6,
            'MP': 7
        }
        return jump_map[token]

    dest_token = match[2]
    comp_token = match[3]
    jump_token = match[5]

    command = (7 << 13) | (comp(comp_token) << 6) | (dest(dest_token) << 3) | (jump(jump_token))

    if debug:
        print("** C command **")
        print('dest_token:', dest_token)
        print('comp_token:', comp_token)
        print('jump_token:', jump_token)
        print('command:', to_bin(command))

    return to_bin(command)

def parse(asm, num=None, debug=False):
    ma=re.match(regexp['a_command'], asm)
    mc=re.match(regexp['c_command'], asm)
    cmd=''

    if ma is not None:
        cmd = a_command(ma, debug)
    elif mc is not None:
        cmd = c_command(mc, debug)
    else: 
        print("Parse error at line", i, ":", line)
        raise

    if debug:
        print("ASM:", asm, "\nHACK:", cmd)

    return cmd

#####################################################################################################
if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Assemble a HACK assembly language file into HACK machine language')
    parser.add_argument('asm')
    parser.add_argument('-o', default=None, help='Output file name (default: [asm_file].hack)')
    parser.add_argument('-v', action='store_const', const=True, default=False, dest='debug')
    args = parser.parse_args()

    if args.asm[-4:] != '.asm':
        print("Input file must have '.asm' file extension")
        sys.exit(1)

    if not os.path.isfile(args.asm):
        print("File not found:", args.asm)
        sys.exit(1)

    output_file = args.o
    if output_file is None:
        output_file = args.asm[0:-4] + '.hack'

    asm = []
    hack = []

    # Read the input file and store the relevant lines as code
    with open(args.asm) as infile:
        for line in infile:
            line_content = line.split('//')[0].replace(' ','').strip()
            if len(line_content) > 0:
                asm.append(line_content)

    if args.debug:
        print("======== ASM ========")
        for line in asm:
            print(line)
        print("======================")
        print()

    # First pass, gathering labels
    i = 0

    for line in asm:
        m = re.match(regexp['label'], line)

        if m is None:
            i += 1
        else:
            symbols[m[1]] = i

    # We can now remove all labels from the ASM
    asm = [i for i in asm if not regexp['label'].match(i)]

    # Second pass, gathering variables
    i = 16 # By convention, variables are stored in memory address 16 and up

    for line in asm:
        m = re.match(regexp['variable'], line)

        if m is not None:
            if m[1] not in symbols:
                symbols[m[1]] = i
                i += 1

    if args.debug:
        print("======== SYMBOLS ========")
        for key in symbols:
            print(key.ljust(30), '|', symbols[key])
        print("=========================")
        print()


    # Let's get assembling
    i = 0
    for line in asm:
        cmd = parse(line, num=i)
        i += 1
        hack.append(cmd)

    if args.debug:
        print("======== HACK ========")
        for line in hack:
            print(line)
        print("======================")

    with open(output_file, 'w') as f:
        for line in hack:
            f.write(line + "\n")

