# Problem Statement:
# Given two sorted linked lists A & B. You need to find the union of these two linked lists in sorted
# order only.
# For example:
# Linked List A = Head -> 2 -> 10 -> 12 -> 12 -> 19 -> 20 -> NULL
# Linked List B = Head -> 2 -> 5 -> 10 -> 10 -> 12 -> NULL
#
# Output C = A + B = Head -> 2 -> 2 -> 5 -> 10 -> 10 -> 10 -> 12 -> 12 -> 12 -> NULL

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

ll1 = LinkedList.new
ll1.insert_at_top(20)
ll1.insert_at_top(19)
ll1.insert_at_top(12)
ll1.insert_at_top(12)
ll1.insert_at_top(10)
ll1.insert_at_top(2)
ll1.print

ll2 = LinkedList.new
ll2.insert_at_top(12)
ll2.insert_at_top(10)
ll2.insert_at_top(10)
ll2.insert_at_top(5)
ll2.insert_at_top(2)
ll2.print

i = ll1.head
j = ll2.head
linked_list_c_data = []

# Time Complexity
# If Length of Linked List A in 'N' and Linked List of Length B is 'M'
# O (N + M)
while (i || j)
  break unless i || j

  if i && j
    if i.data <= j.data
      linked_list_c_data << i.data
      i = i.next
    else
      linked_list_c_data << j.data
      j = j.next
    end
  elsif i
    linked_list_c_data << i.data
    i = i.next
  elsif j
    linked_list_c_data << j.data
    j = j.next
  end
end

linked_list_c_data.join(' -> ')