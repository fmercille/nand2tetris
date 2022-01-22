class ParseError(Exception):
    def __init__(self, message):
        self.message = message


class Command:
    valid_commands = {
        'add': 0,
        'sub': 0,
        'neg': 0,
        'eq': 0,
        'gt': 0,
        'lt': 0,
        'and': 0,
        'or': 0,
        'not': 0,
        'pop': 2,
        'push': 2,
        'label': 1,
        'goto': 1,
        'if-goto': 1,
        'function': 2,
        'call': 2,
        'return': 0
    }

    def to_string(self):
        s = self.command

        for o in self.operands:
            s += ' ' + o

        return s

    def parse(line, lineno = 0):
        tokens = line.split('//')[0].split(' ')

        if len(tokens[0]) == 0:
            return None

        if tokens[0] in Command.valid_commands:
            num_operands = len(tokens) - 1

            if num_operands != Command.valid_commands[tokens[0]]:
                raise ParseError(f'Incorrect number of operands received for command {tokens[0]} (expected {valid_commands[token[0]]} but received {num_operands}')

            c = Command()
            c.command = tokens[0]
            c.operands = tokens[1:]
            c.lineno = lineno
            return c

        else:
            raise ParseError(f'{tokens[0]} is not a valid command')

