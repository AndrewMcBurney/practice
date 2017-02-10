#!/bin/python3

import sys

n = int(input().strip())

def print_staircase(n, m):
    """
    Recursive function to print out a row in a staircase
    """
    if n == 0 and m == 0:
        print("")
    elif n == 0 and not m == 0:
        print("#", end="")
        print_staircase(n, m - 1)
    else:
        print(" ", end="")
        print_staircase(n - 1, m)


def print_row(n, m):
    """
    Recursively iterate through all rows in the staircase, denoted by n
    """
    if n < m:
        return
    else:
        print_staircase(n - m, m)
        print_row(n, m + 1)


print_row(n, 1)
