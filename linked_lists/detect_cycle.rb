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

  def detect_cycle
    slow = @head
    fast = @head
    while fast
      slow = slow.next
      fast = fast.next.next
      if slow == fast
        puts 'Cycle Found'
        return true
      end
    end

    puts "Cycle Not found"
    return false
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
ll.insert_at_top(20)
ll.insert_at_top(19)
ll.insert_at_top(12)
ll.insert_at_top(12)
ll.insert_at_top(10)
ll.insert_at_top(2)

# Introduce Cycle
head = ll.head
head.next.next.next.next.next = head.next

ll.detect_cycle

