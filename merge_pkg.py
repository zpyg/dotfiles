#!/usr/bin/env python3
from pathlib import Path
remote_pkg = set(Path("./package.list").read_text().split())
local_pkg = set(Path("./package.local.list").read_text().split())
"""
1. 安装远程增加
2. 卸载远程移除
"""

from subprocess import run

added_pkg = remote_pkg - local_pkg
removed_pkg = local_pkg - remote_pkg
print(f"远程增加 {added_pkg}")
print(f"远程移除 {removed_pkg}")
for pkg in added_pkg:
    print("> yay", "-S", pkg)
    run(["yay", "-S", pkg])
    # --needed
for pkg in removed_pkg:
    print("> yay", "-Rnsdd", pkg)
    run(["yay", "-Rnsdd", pkg])
    # -Rns
    # -Rnsdd
    # -Rnsc
