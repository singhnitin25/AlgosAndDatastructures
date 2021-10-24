# Minimum element present in stack
# To achive this in O(1) we need to maintain another auxiliary stack.
class CustomStack
  attr_accessor :stack, :min_stack

  def initialize
    self.stack = []
    self.min_stack = []
  end

  def push(element)
    stack.push(element)
    if min_stack.size == 0 || element <= min_stack.last
      min_stack.push(element)
    end
  end

  def pop
    popped_element = stack.pop
    if min_stack.size > 0 && popped_element == min_stack.last
      min_stack.pop
    end
  end

  # Top of the min stack will always be minimum element
  def min
    min_stack.last
  end
end