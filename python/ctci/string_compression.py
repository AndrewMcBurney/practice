#!/usr/bin/python3

"""
string_compression.py

@author: Andrew Robert McBurney
@info:   Cracking the Coding Interview question.
"""


def string_compression(s):
    """Compresses a string to a new format."""
    if len(s) is 0:
        return ""

    values = []
    curr_char = s[0]
    curr_count = 1

    for i in range(1, len(s)):
        if curr_char is s[i]:
            curr_count += 1
        else:
            values.append((curr_char, curr_count))
            curr_char = s[i]
            curr_count = 1

    values.append((curr_char, curr_count))

    new_string = ""

    for char, count in values:
        new_string += char + str(count)

    if len(new_string) < len(s):
        return new_string

    return s
