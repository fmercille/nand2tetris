import command

class InvalidSegmentError(Exception):
    def __init__(self, message):
        self.message = message

class NotImplementedError(Exception):
    def __init__(self, message):
        self.message = message

class BaseWriter:
    def write(self, cmd):
        comment = '// ' + cmd.to_string()
        return [comment] + self._do_write(cmd)

    def _do_write(self, cmd):
        raise NotImplementedError(f"'{cmd.command}' is not yet implemented")

