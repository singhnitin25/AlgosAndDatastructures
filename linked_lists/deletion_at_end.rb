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
    else
      @head = node
    end
    @tail = node
  end

  # O(1)
  def deletion_at_top
    if @head
      puts "Deleting from the top #{@head.data}"
      @head = @head.next
    else
      puts "Linked List is already empty."
    end
  end

  # O(n)
  def deletion_at_end
    node = @head
    if node
      if @head == @tail
        puts "Deleting the only Element of LL #{@head}"
        @head = nil
        @tail = nil
      else
        while node.next.next
          node = node.next
        end
        puts "Deleting the last element of LL #{node.next}"
        node.next = nil
        @tail = node
      end
    else
      puts "Linked List is already empty"
    end
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
ll.insert_at_top(10)
ll.insert_at_top(20)
ll.insert_at_top(30)
ll.insert_at_end(5)
ll.print # 30 (Head) -> 20 -> 10 -> 5 (tail)
ll.deletion_at_end
ll.print
