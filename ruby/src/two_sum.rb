# frozen_string_literal: true

# Given an array of integers, return indices of the two numbers such that they
# add up to a specific target.
#
# You may assume that each input would have exactly one solution, and you may
# not use the same element twice.
#
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  dict = {}

  nums.each.with_index do |n, i|
    return [i, dict[target - n]].sort if dict[target - n]
    dict[n] = i
  end
end
