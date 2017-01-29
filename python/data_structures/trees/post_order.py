#!/bin/python3

"""
Node is defined as:
self.left (the left child of the node)
self.right (the right child of the node)
self.data (the value of the node)
"""

def postOrder(root):
    """
    Post-order traversal. Example:

    Input:
              3
             / \
           5    2
          / \  /
         1  4  6

    Output:
    1 4 5 6 2 3
    """
    if root.left is not None:
        postOrder(root.left)
    if root.right is not None:
        postOrder(root.right)
    print(root.data, end=" ")
