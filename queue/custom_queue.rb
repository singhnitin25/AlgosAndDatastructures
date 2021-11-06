# Ruby provides inbuilt thread safe Queue Class
# FIFO

class CustomQueue
  attr_reader :items
  def initialize
    @items = []
  end

  # Push at the start of the array
  def push(item)
    @items.unshift item
  end

  # Remove the first element inserted
  def pop
    @items.pop
  end

  def front
    @items[-1]
  end

  def rear
    @items[0]
  end
end