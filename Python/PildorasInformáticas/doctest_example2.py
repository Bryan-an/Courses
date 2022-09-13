import math
import doctest


def square_root(numbers_list):
    """
    The functions returns a list of squares of the numbers passed as the list argument

    >>> list = []
    >>> for i in [4, 9, 16]:
    ...     list.append(i)
    >>> square_root(list)
    [2.0, 3.0, 4.0]

    >>> list = []
    >>> for i in [4, 9, 16, 50, 78, -90, 125]:
    ...     list.append(i)
    >>> square_root(list)
    Traceback (most recent call last):
        ...
    ValueError: math domain error
    """
    return [math.sqrt(n) for n in numbers_list]


# print(square_root([9, 16, 25, 36]))

doctest.testmod()
