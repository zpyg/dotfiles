from functools import reduce
from operator import concat


def unpack_dict(target: dict) -> tuple:
    """
    $ {key: value} -> (key, value)
    """
    return reduce(concat, target.items())
