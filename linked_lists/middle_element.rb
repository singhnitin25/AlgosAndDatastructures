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
  attr_accessor :head
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

  # Slow ptrs increments i position
  # Fast pts increments 2i position
  # We terminate loop when 2i = N which means i = N/2
  # So when fast ptrs is at last element take the value of slow ptr that will be
  # middle of linked list.
  def middle_element
    slow = @head
    fast = @head
    while fast.next && fast.next.next
      slow = slow.next
      fast = fast.next.next
    end
    puts "Mieddle Element #{slow.data}"
  end

  def print
    node = @head
    nodes = [] # We can avoid this auxiliary space by printing node in loop itself
    while node
      nodes << node.data
      node = node.next
    end
    puts nodes.join(' -> ')
  end
end

ll = LinkedList.new
ll.insert_at_top(22)
ll.insert_at_top(20)
ll.insert_at_top(19)
ll.insert_at_top(14)
ll.insert_at_top(13)
ll.insert_at_top(10)
ll.insert_at_top(2)
ll.insert_at_top(1)

ll.middle_element
