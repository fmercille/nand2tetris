import os

import command
import code_writer
from globals import Globals

def translate_file(filename, debug=False):
    commands = []
    asm = []

    Globals.filename = os.path.basename(filename.split('.')[0])

    # Read the input file and store the relevant lines as code
    with open(filename) as infile:
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

    if debug:
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

    return asm
