from code_writer_impl.base_writer import BaseWriter, InvalidSegmentError, NotImplementedError
from globals import Globals

class Writer(BaseWriter):
    valid_segments = [
        'local',
        'argument',
        'this',
        'that',
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

        return self._store_value(segment, value)


    def _store_value(self, segment, value):
        if segment in Writer.segment_symbol: # local, argument, this, that
            return [
                f'@{value} // D={Writer.segment_symbol[segment]}[{value}]',
                'D=A',
                f'@{Writer.segment_symbol[segment]}',
                'D=D+M',
                '@SP // SP--',
                'AM=M-1',
                'D=D+M',
                'A=D-M',
                'M=D-A'
            ]
        elif segment == 'static':
            return [
                '@SP // SP--',
                'AM=M-1',
                'D=M',
                f'@{Globals.filename}.{value}',
                'M=D'
            ]
        elif segment == 'pointer':
            if value == '0': # THIS
                return [
                    '@SP // SP--',
                    'AM=M-1',
                    'D=M',
                    '@THIS // *THIS=D',
                    'M=D'
                ]
            else: # THAT
                return [
                    '@SP // SP--',
                    'AM=M-1',
                    'D=M',
                    '@THAT // *THAT=D',
                    'M=D'
                ]
        elif segment == 'temp':
            return [
                f'@{value}',
                'D=A',
                f'@5',
                'D=D+A',
                '@SP // SP--',
                'AM=M-1',
                'D=D+M',
                'A=D-M',
                'M=D-A'
            ]
        else:
            raise NotImplementedError(f'Segment {segment} is not implemented yet')
