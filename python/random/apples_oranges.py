#!/usr/bin/python3

"""
apples_oranges.py
@author: Andrew McBurney
@note:   Simple hackerrank challenge
"""

import sys

s,t = input().strip().split(' ')
s,t = [int(s),int(t)]
a,b = input().strip().split(' ')
a,b = [int(a),int(b)]
m,n = input().strip().split(' ')
m,n = [int(m),int(n)]
apple = [int(apple_temp) for apple_temp in input().strip().split(' ')]
orange = [int(orange_temp) for orange_temp in input().strip().split(' ')]

def count_list(elem, bound, on_house=0):
    """ Count occurrences within a range given a bound """
    if not elem:
        return on_house
    elif s <= elem[0] + bound <= t:
        return count_list(elem[1:], bound, on_house + 1)
    else:
        return count_list(elem[1:], bound, on_house)

print(count_list(apple, a))
print(count_list(orange, b))
