#!/bin/python3

"""
Node is defined as:
self.left (the left child of the node)
self.right (the right child of the node)
self.data (the value of the node)
"""

def inOrder(root):
    """
    In-order traversal. Example:

    Input:
              3
             / \
           5    2
          / \  /
         1  4  6

    Output:
    1 5 4 3 6 2
    """
    if root.left is not None:
        postOrder(root.left)
    print(root.data, end=" ")
    if root.right is not None:
        postOrder(root.right)
