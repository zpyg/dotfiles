from pathlib import Path
from typing import Generator

from utils import unpack_dict


def __is_file(item) -> bool:
    return isinstance(item, str)

def save_owner():
    ...

def iter_dir():
    ...

def parse_conf(current_items: list, parent: Path = Path('/')) -> Generator:
    for item in current_items:
        if __is_file(item):
            yield parent / item
        else:
            sub_dir, sub_items = unpack_dict(item)
            yield from parse_conf(sub_items, parent / sub_dir)
