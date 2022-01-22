from code_writer_impl.base_writer import BaseWriter

class Writer(BaseWriter):
    def _do_write(self, cmd):
        return [
            '@SP // SP--',
            'AM=M-1',
            'D=M',
            'A=A-1',
            'D=D-M',
            f'@__GT__TRUE_{cmd.lineno}__',
            'D;JLT',
            '@SP',
            'A=M',
            'A=A-1',
            'M=0',
            f'@__GT__NEXT_{cmd.lineno}__',
            '0;JMP',
            f'(__GT__TRUE_{cmd.lineno}__)',
            '@SP',
            'A=M',
            'A=A-1',
            'M=-1',
            f'(__GT__NEXT_{cmd.lineno}__)'
        ]



