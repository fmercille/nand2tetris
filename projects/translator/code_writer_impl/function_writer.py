from code_writer_impl.base_writer import BaseWriter

class Writer(BaseWriter):
    def _do_write(self, cmd):
        func_name = cmd.operands[0]
        num_locals = int(cmd.operands[1])

        # Initialize local segment
        local_segment_init = []
        if num_locals > 0:
            local_segment_init += [
                '// Initialize local segment',
                '@LCL',
                'A=M',
                'M=0 // LCL[0]'
            ]

            for i in range(num_locals - 1):
                local_segment_init += [
                    'A=A+1',
                    f'M=0 // LCL[{i+1}]'
                ]

            local_segment_init += [
                'D=A+1 // Set SP',
                '@SP',
                'M=D'
            ]

        return [
            f'({func_name})',
            *local_segment_init,
        ]

