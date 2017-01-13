#!/bin/python3

import sys

n = int(input().strip())

def print_staircase(n, m):
    if n == 0 and m == 0:
        print("")
    elif n == 0 and not m == 0:
        print("#", end="") 
        print_staircase(n, m - 1) 
    else:
        print(" ", end="")
        print_staircase(n - 1, m)

        
def print_row(n, m):
    if n < m:
        return
    else:
        print_staircase(n - m, m)
        print_row(n, m + 1)
    
print_row(n, 1)
