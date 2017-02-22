#!/usr/bin/python3
"""
grid_challenge.py
@author: Andrew McBurney
@info:   Hackerrank greedy algorithms question.
"""

import sys
import fileinput


def check_rearrange_possible(grid, n):
    """Time complexity: O(ij)"""
    for j in range(n):
        for i in range(n - 1):
            if grid[i][j] > grid[i + 1][j]:
                return False
    return True


def grid_challenge(grid, n):
    """Time complexity O(ij(log(j)) + ij)"""
    for i in range(n):
        grid[i].sort()

    if check_rearrange_possible(grid, n):
        print("YES")
    else:
        print("NO")


def main():
    "Get input and call algorithm"
    T = int(sys.stdin.readline())

    for t in range(T):
        n = int(sys.stdin.readline())

        grid = []
        for i in range(n):
            grid.append(list(sys.stdin.readline()))

        grid_challenge(grid, n)


if __name__ == '__main__':
    main()
