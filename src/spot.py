#!/usr/bin/env python3
"""
# spot - 我的简单配置文件管理器

## FILE
> dots.yaml

配置文件列表， 由根开始

## COMMAND
```shell
./spot [update|restore]
```

* `update` 复制配置文件
* `restore` 还原配置文件

由于一些配置文件为 root 所有，所以需要以 root 运行


该 spot 没有 super cow powers.
"""
from pathlib import Path
from shutil import chown

from modules.parse import load_conf, parse_conf
from modules.file import copy, store_file_stat

DATA_DIR = Path("data")
DATA_DIR.exists() or DATA_DIR.mkdir()
STAT_FILE = Path("__stat__")

def update():
    dotfile_list = parse_conf(load_conf("./dots.yml"))
    stat_file = STAT_FILE.open("w")
    for src in dotfile_list:
        dst = Path(f"{DATA_DIR}/{src}")
        copy(src, dst)
        if src.is_file():
            store_file_stat(src, dst, stat_file)
        else:
            for sub_src in src.rglob("*"):
                sub_dst = Path(f"{DATA_DIR}/{sub_src}")
                store_file_stat(sub_src, sub_dst, stat_file)
    stat_file.close()

def restore():
    stats = STAT_FILE.read_text()
    for file in stats.split():
        file, owner = file.split("|")
        dst = Path(file)
        src = Path(f"{DATA_DIR}/{dst}")
        copy(src, dst)
        chown(dst, owner)
        chown(dst.parent, owner)

if __name__ == "__main__":
    from sys import argv
    if len(argv) == 1 or argv[1] in {"help", "-h"}:
        print(__doc__)
        exit()
    if argv[1] == "update":
        update()
    if argv[1] == "restore":
        restore()
