def load_conf(file_path: str) -> list:
    import yaml
    with open(file_path, "r") as f:
        return yaml.load(f, Loader=yaml.Loader)


from functools import reduce
from operator import concat
def __unpack_dict(target: dict) -> tuple:
    """
    $ {key: value} -> (key, value)
    """
    return reduce(concat, target.items())


def __is_file(item):
    return isinstance(item, str)


from pathlib import Path
from typing import Generator
def parse_conf(current_items: list, parent: Path = Path('/')) -> Generator:
    for item in current_items:
        if __is_file(item):
            yield parent / item
        else: # is dir
            sub_dir, sub_items = __unpack_dict(item)
            yield from parse_conf(sub_items, parent / sub_dir)
