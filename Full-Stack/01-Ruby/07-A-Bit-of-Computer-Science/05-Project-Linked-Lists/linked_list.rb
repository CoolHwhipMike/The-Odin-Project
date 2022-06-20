# frozen_string_literal: true

# class for the list
class LinkedList
  attr_accessor :head

  # Creates the initial empty linked list
  def initialize
    self.head = nil
  end

  # Adds a value to the end of the list
  def append(value)
    if head.nil?
      self.head = Node.new(value, nil)
    else
      last_node = head
      # while (!last_node.next_node.nil?)
      last_node = last_node.next_node until last_node.next_node.nil?
      last_node.next_node = Node.new(value, nil)
    end
  end

  # Adds a value to the beginning of the list
  def prepend(value)
    if head.nil?
      self.head = Node.new(value, nil)
    else
      old_head = head
      self.head = Node.new(value, old_head)
    end
  end

  # Removes a value from the list
  def remove(value)
    reutrn if head.nil?

    node = head
    previous_node = nil
    until node.nil?
      if node.value == value
        if !previous_node.nil?
          previous_node.next_node = node.next_node
        else
          self.head = nil
        end
        return
      end
      previous_node = node
      node = node.next_node
    end
  end

  # Finds a value in the list
  def find(value)
    node = head
    until node.nil?
      return true if node.value == value

      node = node.next_node
    end

    false
  end

  def to_s
    node = head
    until node.nil?
      puts "#{node.value} - #{node.next_node.value}"
      node = node.next_node
    end
  end

  # class for each node
  class Node
    attr_accessor :value, :next_node

    def initialize(value, next_node)
      self.value = value
      self.next_node = next_node
    end
  end
end

ll = LinkedList.new
ll.append(10)
ll.append(20)
ll.prepend(30)

# puts ll.head.value
# puts ll.head.next_node.value
# p ll

ll.to_s
