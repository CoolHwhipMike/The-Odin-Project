# frozen_string_literal: true

# Class for the list as a whole
class LinkedList
  # attr_accessor :current_node

  def initialize
    @head = nil
    @len = 0
  end

  def prepend(value)
    new_node = Node.new(value, @head)
    @head = new_node
    @len += 1
  end

  def size
    @len
  end

  # def append(value)
  #   # @head = @next_node until @next_node.nil?
  #   while @head != nil
  #     @head = @next_node
  #   end
  #   current_node = Node.new(value, @head)
  #   @head = current_node
  #   @len += 1
  # end
end

# Class that generates each item in the list
class Node
  def initialize(value, next_node)
    @value = value
    @next_node = next_node
  end
end

ll = LinkedList.new
p ll
puts
ll.prepend(10)
p ll
puts
ll.prepend(30)
p ll
puts
