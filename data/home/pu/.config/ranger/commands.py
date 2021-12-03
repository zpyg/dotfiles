"""自定义命令"""
from __future__ import (absolute_import, division, print_function)

import subprocess
from os import environ

from ranger.api.commands import Command


def _fzf(command: Command, ftype: str):
    env = environ.copy()
    hidden = "--hidden" if command.fm.settings.show_hidden else ''
    env["FZF_DEFAULT_COMMAND"] = f"fd --type {ftype} {hidden}"
    fzf = command.fm.execute_command("fzf --no-multi", env=env, universal_newlines=True, stdout=subprocess.PIPE)
    result, _ = fzf.communicate()
    return result.strip()


class FzfSearchDir(Command):
    """使用 fzf 搜索目录"""
    def execute(self):
        destination = _fzf(self, 'd') 
        self.fm.cd(destination)


class FzfSearchFile(Command):
    """使用 fzf 搜索文件"""
    def execute(self):
        destination = _fzf(self, 'f')
        self.fm.select_file(destination)

