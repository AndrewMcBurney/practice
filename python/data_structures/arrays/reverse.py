#!/bin/python3

"""
Simple script to reverse an array
"""

import sys


n = int(input().strip())
arr = [int(arr_temp) for arr_temp in input().strip().split(' ')]

arr.reverse()
for x in arr:
    print(x, end=" ")
