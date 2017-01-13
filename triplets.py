#!/bin/python

import sys

a0,a1,a2 = raw_input().strip().split(' ')
a0,a1,a2 = [int(a0),int(a1),int(a2)]
b0,b1,b2 = raw_input().strip().split(' ')
b0,b1,b2 = [int(b0),int(b1),int(b2)]

def compare_index(index_alice, index_bob):
    if (index_alice > index_bob):
        return 1, 0
    elif (index_alice < index_bob):
        return 0, 1
    else:
        return 0, 0

a, b = compare_index(a0, b0)
c, d = compare_index(a1, b1)
e, f = compare_index(a2, b2)

print str(a + c + e) + " " + str(b + d + f)
