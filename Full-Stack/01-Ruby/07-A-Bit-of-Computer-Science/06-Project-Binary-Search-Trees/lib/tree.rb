# frozen_string_literal: true

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

  def insert(value, node = @root)
    if value < node.data
      node.left.nil? ? node.left = Node.new(value) : insert(value, node.left)
    elsif value > node.data
      node.right.nil? ? node.right = Node.new(value) : insert(value, node.right)
    end
  end

  def delete(value)
    node = find(value)
    node.data = nil
  end

  def find(value, node = @root)
    return if node.nil?

    if value < node.data
      find(value, node.left)
    elsif value > node.data
      find(value, node.right)
    else
      # puts "Node: #{node} Data: #{node.data}"
      node
    end
  end

  def depth(value, node = @root, counter = 0)
    return if node.nil?

    if value < node.data
      depth(value, node.left, counter + 1)
    elsif value > node.data
      depth(value, node.right, counter + 1)
    else
      puts "Depth: #{counter}"
    end
  end

  def pretty_print(node = @root, prefix = '', is_left = true)
    pretty_print(node.right, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right
    puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.data}"
    pretty_print(node.left, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left
  end
end
