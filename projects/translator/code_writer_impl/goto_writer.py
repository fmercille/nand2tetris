from code_writer_impl.base_writer import BaseWriter

class Writer(BaseWriter):
    def _do_write(self, cmd):
        return [
            f'@{cmd.operands[0]}',
            '0;JMP'
        ]

