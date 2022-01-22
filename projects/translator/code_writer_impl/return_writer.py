from code_writer_impl.base_writer import BaseWriter

class Writer(BaseWriter):
    def _do_write(self, cmd):
        get_return_address = [
            '@LCL // Fetch return address',
            'D=M',
            '@5',
            'D=D-A',
            'M=D',
        ]

        push_return_value = [
            '@SP // Save return value to *ARG',
            'AM=M-1',
            'D=M',
            '@ARG',
            'A=M',
            'M=D'
        ]

        reset_sp = [
            '@ARG // Reset SP',
            'D=M+1',
            '@SP',
            'M=D'
        ]

        reset_frame = []
        for idx, p in enumerate(['THAT', 'THIS', 'ARG', 'LCL'], start=1):
            reset_frame += [
                f'@{idx} // Reset {p}',
                'D=A',
                '@LCL',
                'A=M-D',
                'D=M',
                f'@{p}',
                'M=D'
            ]

        goto_return_address = [
            '@5 // Goto return address that was saved in temp',
            'A=M',
            '0;JMP'
        ]

        return [
            *get_return_address,
            *push_return_value,
            *reset_sp,
            *reset_frame,
            *goto_return_address
        ]
