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
  end

  # Time Complexity O(1)
  def insert_at_top(data)
    node = Node.new(data)
    puts "Inserting #{data} at the top."
    if @head
      node.next = @head
    end
    @head = node
  end

  def print
    node = @head
    while node
      puts node
      node = node.next
    end
  end
end

# Case 1 when Linked List is empty i.e. Head is null
ll = LinkedList.new
ll.insert_at_top(10)
ll.print # 10

# Case 2 when Linked list is not empty
ll.insert_at_top(20)
ll.print # 20 -> 10