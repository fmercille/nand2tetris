import command
from code_writer_impl import \
    base_writer, \
    add_writer, \
    sub_writer, \
    neg_writer, \
    eq_writer, \
    gt_writer, \
    lt_writer, \
    and_writer, \
    or_writer, \
    not_writer, \
    pop_writer, \
    push_writer, \
    label_writer, \
    goto_writer, \
    ifgoto_writer, \
    function_writer, \
    call_writer, \
    return_writer


class NotImplementedError(Exception):
    def __init__(self, message):
        self.message = message

class CodeWriter:
    writers = {
        'add': add_writer.Writer(),
        'sub': sub_writer.Writer(),
        'neg': neg_writer.Writer(),
        'eq': eq_writer.Writer(),
        'gt': gt_writer.Writer(),
        'lt': lt_writer.Writer(),
        'and': and_writer.Writer(),
        'or': or_writer.Writer(),
        'not': not_writer.Writer(),
        'pop': pop_writer.Writer(),
        'push': push_writer.Writer(),
        'label': label_writer.Writer(),
        'goto': goto_writer.Writer(),
        'ifgoto': ifgoto_writer.Writer(),
        'function': function_writer.Writer(),
        'call': call_writer.Writer(),
        'return': return_writer.Writer()
    }

    def write(cmd):
        if cmd.command not in CodeWriter.writers:
            raise command.ParseError(f'{cmd.command} is not a valid command')

        try:
            return CodeWriter.writers[cmd.command].write(cmd)
        except base_writer.NotImplementedError as e:
            raise NotImplementedError(e)
