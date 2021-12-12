"""文件操作"""
from pathlib import Path
from typing import IO
from subprocess import run

def copy(src: Path, dst: str) -> None:
    run(["mkdir", "-p", str(dst.resolve().parent)])
    run(["rm", "-rf", str(dst)])
    run(["cp", "-rfv", "--preserve",str(src), str(dst)])

def store_file_stat(src: Path, dst: Path, stat_file: IO) -> None:
    stat_file.write(
        f"{src}|"
        f"{src.owner()}\n"
    )
