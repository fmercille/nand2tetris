from code_writer_impl.base_writer import BaseWriter
from globals import Globals

class Writer(BaseWriter):
    ret_counter = 0

    def _do_write(self, cmd):
        func_name = cmd.operands[0]
        num_args = int(cmd.operands[1])
        return_label = f'__{Globals.filename}__ret__{Writer.ret_counter}__'
        Writer.ret_counter += 1

        push_ret_address = [
            f'@{return_label} // Push return address',
            'D=A',
            *(self._push_to_stack())
        ]

        save_frame = []
        for p in ['LCL', 'ARG', 'THIS', 'THAT']:
            save_frame += [
                f'@{p} // Push saved {p}',
                'D=M',
                *(self._push_to_stack())
            ]

        set_arg = [
            '@SP // Reposition ARG',
            'D=M',
            f'@{5 + num_args}',
            'D=D-A',
            '@ARG',
            'M=D'
        ]

        set_lcl = [
            '@SP // Reposition LCL',
            'D=M',
            '@LCL',
            'M=D'
        ]

        return [
            *push_ret_address,
            *save_frame,
            *set_arg,
            *set_lcl,
            f'@{func_name} // Jump to function',
            '0;JMP',
            f'({return_label})'
        ]

    def _push_to_stack(self):
        return [
            '@SP // *SP=D',
            'A=M',
            'M=D',
            '@SP // SP++',
            'M=M+1'
        ]

