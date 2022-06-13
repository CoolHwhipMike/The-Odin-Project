# frozen_string_literal: true

# # Class that represents the entire linked list
# class LinkedList
#   attr_accessor :head

#   def initialize
#     self.head = nil
#   end

#   def append(value)
#     if self.head.nil?
#       self.head = Node.new(value)
#     else
#       last_node = self.head
#       while (!last_node.next_node.nil?)
#         last_node = last_node.next_node
#       end

#       last_node.next_node = Node.new(value, nil)
#     end
#   end

#   # Class that creates the individual node for the linked list
#   class Node
#     attr_accessor :value, :next_node

#     def initialize(value = nil, next_node = nil)
#       self.value = value
#       self.next_node = next_node
#     end
#   end
# end
