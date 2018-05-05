# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next

  def initialize(val)
    @val = val
    @next = nil
  end
end

# You are given two non-empty linked lists representing two non-negative
# integers. The digits are stored in reverse order and each of their nodes
# contain a single digit. Add the two numbers and return it as a linked list.
#
# You may assume the two numbers do not contain any leading zero, except the
# number 0 itself.
#
# Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
# Output: 7 -> 0 -> 8
# Explanation: 342 + 465 = 807.
#
# @param [ListNode] list1
# @param [ListNode] list2
# @return [ListNode]
def add_two_numbers(list1, list2)
  sum = list_values(list1).join.to_i + list_values(list2).join.to_i
  node_list = sum.to_s.reverse.each_char.map { |c| ListNode.new(c.to_i) }

  node_list.map.with_index do |node, index|
    node.next = node_list[index + 1] || nil
    node
  end.first
end

# @param [ListNode] node
# @return [Integer[]]
def list_values(node, list = [])
  new_list = list.push(node.val)
  return new_list.reverse if node.next.nil?
  list_values(node.next, new_list)
end
