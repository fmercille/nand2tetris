from code_writer_impl.base_writer import BaseWriter, InvalidSegmentError, NotImplementedError
from globals import Globals

class Writer(BaseWriter):
    valid_segments = [
        'local',
        'argument',
        'this',
        'that',
        'constant',
        'static',
        'pointer',
        'temp'
    ]

    segment_symbol = {
        'local': 'LCL',
        'argument': 'ARG',
        'this': 'THIS',
        'that': 'THAT'
    }

    def _do_write(self, cmd):
        segment = cmd.operands[0]
        value = cmd.operands[1]

        if segment not in Writer.valid_segments:
            raise InvalidSegmentError(f'Invalid segment {segment}')

        return self._get_value(segment, value) + self._push_to_stack()


    def _push_to_stack(self):
        return [
            '@SP // *SP=D',
            'A=M',
            'M=D',
            '@SP // SP++',
            'M=M+1'
        ]

    def _get_value(self, segment, value):
        if segment in Writer.segment_symbol: # local, argument, this, that
            return [
                f'@{value} // D={value}',
                'D=A',
                f'@{Writer.segment_symbol[segment]} // A={Writer.segment_symbol[segment]}+D',
                'A=D+M',
                f'D=M // D=RAM[{Writer.segment_symbol[segment]}+{value}]'
            ]
        elif segment == 'constant':
            return [
                f'@{value} // D={value}',
                'D=A'
            ]
        elif segment == 'static':
            return [
                f'@{Globals.filename}.{value}',
                'D=M'
            ]
        elif segment == 'pointer':
            if value == '0': # THIS
                return [
                    '@THIS // D=*THIS',
                    'D=M'
                ]
            else: # THAT
                return [
                    '@THAT // D=*THAT',
                    'D=M'
                ]
        elif segment == 'temp':
            return [
                f'@{value} // D={value}',
                'D=A',
                f'@5 // A=RAM[5+D]',
                'A=D+A',
                f'D=M // D=RAM[5+{value}]'
            ]
        else:
            raise NotImplementedError(f'Segment {segment} is not implemented yet')
