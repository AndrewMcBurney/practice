#!/usr/bin/python3

"""
Start at the top right corner of the matrix:

- move down if the key is greater than the value at a given index (since all
values below in a column are greater)
- move left if the key is less than a given index (since all values to the left
in a row are lesser)

Worst case time: O(n) + O(m) => O(n + m)

Worst case time happens when the algorithms moves along the borders of the
matrix to the bottom left position (Either all down, then all left, or all left
then all down)
"""

def search_for_value(grid, key, m, n):
    """
    Returns True if the grid contains a value in O(n + m) time
    m: rows (initially the min index for m - first row)
    n: columns (initially the max index for n - last column)

    function(list[list], int, int, int) -> (list[list], int, int, int)* -> bool
    """
    if key == grid[m][n]:
        return True
    elif m == len(grid) - 1 and n == 0:
        return False
    elif key > grid[m][n] and not m == len(grid) - 1:
        # Move down one position
        return search_for_value(grid, key, m + 1, n)
    elif key < grid[m][n] and not n == 0:
        # Move left one position
        return search_for_value(grid, key, m, n - 1)
    else:
        # m = len(grid) and move down (out of bounds)
        # n = 0 and move left (out of bounds)
        return False

# Sample grid
grid = [
    [0, 1, 2],
    [4, 7, 9],
    [10, 12, 18]
]

print( search_for_value(grid, 4, 0, len(grid) - 1) )
# => True
print( search_for_value(grid, 27, 0, len(grid) - 1) )
# => False
