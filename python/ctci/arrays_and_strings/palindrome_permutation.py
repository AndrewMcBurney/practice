#!/usr/bin/python3

"""
palindrome_permutation.py

@author: Andrew Robert McBurney
@info:   Cracking the Coding Interview question.
"""

import re


def palindrome_permutation(s):
    """Checks if the string is a valid permutation of a palindrome."""
    chars_count = {}

    # Ignore whitespace
    s = re.sub("\s+", "", s)

    for c in s:
        if c in chars_count:
            chars_count[c] += 1
        else:
            chars_count[c] = 1

    if len(s) % 2 == 0:
        for v in chars_count.values():
            if not v % 2 == 0:
                return False
        return True
    else:
        odd_values = 0

        for v in chars_count.values():
            if not v % 2 == 0:
                odd_values += 1

        if odd_values is 1:
            return True

        return False
