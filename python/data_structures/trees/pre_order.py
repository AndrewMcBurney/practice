#!/bin/python3

"""
Node is defined as:
self.left (the left child of the node)
self.right (the right child of the node)
self.data (the value of the node)
"""

def preOrder(root):
    """
    Pre-order traversal. Example:

    Input:
              3
             / \
           5    2
          / \  /
         1  4  6

    Output:
    3 5 1 4 2 6
    """
    print(root.data, end=" ")
    if root.left is not None:
        preOrder(root.left)
    if root.right is not None:
        preOrder(root.right)
