#!/usr/bin/python3

"""
roman_to_integer.py

@author: Andrew Robert McBurney
@info:   Leetcode Easy question.
"""


def roman_to_i(s):
    total = 0
    roman_values = {
        "I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000
    }

    for i, c in enumerate(s):
        if i + 1 is len(s):
            total += roman_values[c]
        elif c is "I" and (s[i + 1] is "V" or s[i + 1] is "X"):
            total -= roman_values[c]
        elif c is "X" and (s[i + 1] is "L" or s[i + 1] is "C"):
            total -= roman_values[c]
        elif c is "C" and (s[i + 1] is "D" or s[i + 1] is "M"):
            total -= roman_values[c]
        else:
            total += roman_values[c]

    return total
