#!/usr/bin/python3

"""
one_away.py

@author: Andrew Robert McBurney
@info:   Cracking the Coding Interview question.
"""


def one_away(s1, s2):
    """Checks if the string is one edit away from another."""
    longest_len = len(s1) if len(s1) > len(s2) else len(s2)
    num_edits = 0

    for i in range(longest_len):
        if len(s1) <= i or len(s2) <= i:
            num_edits += 1
        elif s1[i] is not s2[i]:
            num_edits += 1

    if num_edits > 1:
        return False

    return True
