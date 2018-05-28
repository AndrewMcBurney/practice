# frozen_string_literal: true

#
# Implement an iterator over a binary search tree (BST). Your iterator will be
# initialized with the root node of a BST.
#
# Calling next() will return the next smallest number in the BST.
#
# Note: next() and hasNext() should run in average O(1) time and uses O(h)
# memory, where h is the height of the tree.
#

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

class BSTIterator
  # @param {TreeNode} root
  def initialize(root)
    @root = root
    @minimum = root

    # A stack for the path to the minimum element
    @min_element_path = path_to_min_element(root)
  end

  # @return {Boolean}
  def has_next
    !min_element_path.empty?
  end

  # @return {Integer}
  def next
    min_element = min_element_path.pop
    min_element_path.concat(path_to_min_element(min_element.right))
    min_element.val
  end

  private

  attr_accessor :root, :min_element_path

  def path_to_min_element(node)
    arr = []
    until node.nil?
      arr.push(node)
      node = node.left
    end
    arr
  end
end

# Your BSTIterator will be called like this:
# i, v = BSTIterator.new(root), []
# while i.has_next()
#   v << i.next
# end
