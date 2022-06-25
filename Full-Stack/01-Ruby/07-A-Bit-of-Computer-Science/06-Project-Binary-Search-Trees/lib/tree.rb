# frozen_string_literal: true

require_relative 'info'
require_relative 'modify'
require_relative 'traverse'

# class for the tree
class Tree
  include Info
  include Modify
  include Traverse
  attr_accessor :root

  def initialize(array)
    @corrected_array = array.uniq.sort
    @root = build_tree(@corrected_array)
  end

  def build_tree(array)
    return if array.empty?
    return Node.new(array[0]) if array.length == 1

    middle = array.length / 2
    root_node = Node.new(array[middle])
    root_node.left = build_tree(array[0...middle])
    root_node.right = build_tree(array[middle + 1..])
    root_node
  end

  def pretty_print(node = @root, prefix = '', is_left = true)
    pretty_print(node.right, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right
    puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.data}"
    pretty_print(node.left, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left
  end
end
