class Node
  attr_accessor :data, :next
  def initialize(data)
    self.data = data
    self.next = nil
  end

  def to_s
    "Node with value: #{@data}"
  end
end

class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end

  # Time Complexity O(1)
  def insert_at_top(data)
    node = Node.new(data)
    puts "Inserting #{data} at the top."
    if @head
      node.next = @head
    else
      @tail = node
    end
    @head = node
  end

  # This is optimized algorithm where we are
  # maintaining both head & tail pointers.
  # O(1)
  def insert_at_end(data)
    node = Node.new(data)
    puts "Inserting #{data} at the end."
    if @tail
      @tail.next = node
      @tail = node
    else
      @head = node
      @tail = node
    end
  end

  def print
    node = @head
    nodes = [] # We can avoid this auxiliary space by printing node in loop itself
    while node
      nodes << node.data
      node = node.next
    end
    puts nodes.join('->')
  end
end

# Case 1 when Linked List is empty i.e. Head is null
ll = LinkedList.new
ll.insert_at_top(10)
ll.insert_at_top(20)
ll.insert_at_top(30)
ll.print # 30 (Head) -> 20 -> 10 (tail)
ll.insert_at_end(5)
ll.print # 30 (Head) -> 20 -> 10 -> 5 (tail)