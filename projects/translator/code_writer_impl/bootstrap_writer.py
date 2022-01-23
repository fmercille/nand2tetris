from code_writer_impl.base_writer import BaseWriter
import command
import code_writer_impl.call_writer
from globals import Globals

class Writer(BaseWriter):
    def _do_write(self, cmd):
        Globals.filename = 'bootstrap'
        call_command = command.Command()
        call_command.command = 'call'
        call_command.operands = ['Sys.init', '0']
        call_sys_init = code_writer_impl.call_writer.Writer()._do_write(call_command)

        initialize_stack = [
            '@256',
            'D=A',
            '@SP',
            'M=D'
        ]

        infinite_loop = [
            '(__END_OF_PROGRAM__)',
            '@__END_OF_PROGRAM__',
            '0;JMP'
        ]
        return [
            '@256',
            'D=A',
            '@SP',
            'M=D',
            *call_sys_init,
        ]

