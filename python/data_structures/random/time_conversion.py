#!/bin/python3

import sys

time = input().strip()

def convert_time(time, period):
    """
    Converts time from standard to military
    """
    if period == "AM" and time.startswith("12"):
        return "00" + time[2:]
    elif period == "AM" or (period == "PM" and time.startswith("12")):
        return time
    else:
        return str((int(time[:2]) + 12)) + time[2:]


print(convert_time(time[:-2], time[-2:]))
