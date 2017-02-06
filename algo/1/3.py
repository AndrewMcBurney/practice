#!/usr/bin/python3

"""
Time complexity: O(n log(k)) where n is the total number of elements in all
lists, and k is the number of sorted lists

Notes: [:i] is all elements in the list up to that index i
       [i:] is all elements in the list after and including index i
       -> splicing the lists like this is a constant time operation.
"""

def sort_two_lists(list1, list2, new_list=[]):
    """
    Returns one sorted list from two sorted lists passed in. Works in the same
    way merge-sort merges together two sorted lists, by comparing the first
    elements in either lists.

    function(list, list, list) -> (list, list, list)* -> list
    """
    if len(list1) == 0 and len(list2) == 0:
        # base case, return sorted list
        return new_list
    elif len(list1) == 0:
        return sort_two_lists([], [], new_list + list2)
    elif len(list2) == 0:
        return sort_two_lists([], [], new_list + list1)
    elif list1[0] < list2[0]:
        return sort_two_lists(list1[1:], list2, new_list + [list1[0]])
    else:
        return sort_two_lists(list1, list2[1:], new_list + [list2[0]])


def join_lists(lists, i=0):
    """
    Returns a sorted list from a list of lists passed in recursively

    function(list[list], int) -> (list[list], int)* -> list
    """
    if len(lists) == 1:
        # base case, return the sorted list
        return lists[0]
    elif len(lists) < i + 1:
        # next iteration of merging, on half the previous lists size
        return join_lists(lists, 0)
    else:
        return join_lists(
            lists[:i] + [sort_two_lists(lists[i], lists[i + 1])] + lists[i+2:],
            i + 1
        )

print(join_lists([[1,5], [4,5], [2,8], [6,10]]))
# => [1, 2, 4, 5, 5, 8, 10]




