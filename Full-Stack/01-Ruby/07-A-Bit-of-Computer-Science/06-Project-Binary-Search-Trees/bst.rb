# frozen_string_literal: true

# class for each node in the tree
class Node
  attr_accessor :data, :left, :right

  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end
end

# class for the tree
class Tree
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

  def insert(value)
    node = @root

    # until (node.left.nil? && node.right.data > value) || (node.left.data < value && node.right.nil?) || (node.right.nil? && node.left.nil?)
    until node.right.nil? && node.left.nil?
      if value < node.data
        node = node.left
      elsif value > node.data
        node = node.right
      else
        return
      end
    end

      return node.left = Node.new(value) if value < node.data
      return node.right = Node.new(value) if value > node.data
  end

  def pretty_print(node = @root, prefix = '', is_left = true)
    pretty_print(node.right, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right
    puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.data}"
    pretty_print(node.left, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left
  end
end

# test_arr = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
test_arr = [20, 30, 50, 70, 80, 85, 75, 60, 65, 40, 32, 34, 38]

t = Tree.new(test_arr)
t.insert(41)
t.pretty_print
