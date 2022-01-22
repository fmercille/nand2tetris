from code_writer_impl.base_writer import BaseWriter

class Writer(BaseWriter):
    def _do_write(self, cmd):
        return [
            '@SP',
            'A=M-1',
            'M=!M',
        ]

