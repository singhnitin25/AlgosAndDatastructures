# Problem Statement: 0, 1, 00, 01, 10, 11, 000, 001, 010, 011, 100, 101, 110, 111, 0000, 0001...
#

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
end

queue = CustomQueue.new
queue.push '0'
queue.push '1'
n=20
n.times do
  top = queue.pop
  puts "#{top} "
  queue.push(top + '0')
  queue.push(top + '1')
end