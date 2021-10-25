# Generally we can use Ruby Array to implement Abstract data type like Stack
# LIFO order
# Insertion happens at the top & deletion happens at the end
class Stack
  attr_accessor :items
  def initialize
    self.items = []
  end

  def push(item)
    @items.push item
  end

  # Delete the last element #top of the stac
  def pop
    @items.pop
  end

  def size
    @items.length
  end

  def top
    @items[-1] # @items.last
  end
end