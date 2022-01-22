from code_writer_impl.base_writer import BaseWriter

class Writer(BaseWriter):
    def _do_write(self, cmd):
        return [
            '@SP // SP--',
            'AM=M-1',
            'D=M',
            'A=A-1',
            'M=D|M'
        ]

