#!/usr/bin/python3

"""
is_unique.py

@author: Andrew Robert McBurney
@info:   Cracking the Coding Interview question.
"""


def is_unique(s):
    """Checks if a string has all unique characters."""
    chars = {}

    for c in s:
        if c in chars:
            return False

        chars[c] = True

    return True
