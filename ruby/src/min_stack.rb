# frozen_string_literal: true

class MinStack
  def initialize
    @stack = []
    @minimum = nil
  end

  def push(x)
    @minimum = @minimum.nil? ? x : [x, stack.last.last].min
    stack.push([x, @minimum])
  end

  def pop
    stack.pop
    @minimum = stack&.last&.last
  end

  def top
    stack&.last&.first
  end

  def get_min
    @minimum
  end

  private

  attr_accessor :stack
end

# Your MinStack object will be instantiated and called as such:
# obj = MinStack.new()
# obj.push(x)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min()
