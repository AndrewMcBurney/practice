#!/bin/python3

import sys


n = int(input().strip())
arr = [int(arr_temp) for arr_temp in input().strip().split(' ')]


def sum_list(arr, n, s):
    """
    Recursively sum all integers in a list
    """
    if n == 0:
        print(s)
    else:
        return sum_list(arr, n-1, s + arr[n-1])


sum_list(arr, n, 0)
