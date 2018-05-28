# frozen_string_literal: true

# Definition for a binary tree node.
#
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
def max_depth(root)
  return 0 if root.nil?
  [max_depth(root.left) + 1, max_depth(root.right) + 1].max
end
