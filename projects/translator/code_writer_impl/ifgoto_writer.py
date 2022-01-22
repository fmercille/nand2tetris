from code_writer_impl.base_writer import BaseWriter

class Writer(BaseWriter):
    def _do_write(self, cmd):
        return [
            '@SP // Pop',
            'AM=M-1',
            'D=M',
            f'@{cmd.operands[0]}',
            'D;JNE'
        ]
