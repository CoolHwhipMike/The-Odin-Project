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

  def delete(value, node = @root, previous_node = nil)
    return if node.nil?

    if value < node.data
      previous_node = node
      delete(value, node.left, previous_node)
    elsif value > node.data
      previous_node = node
      delete(value, node.right, previous_node)
    else
      delete_options(node, previous_node)
    end
  end

  def delete_options(node, previous_node)
    delete_leaf(node, previous_node) if node.left.nil? && node.right.nil?
    delete_left_child(node) if node.right.nil? && !node.left.nil?
    delete_right_child(node) if node.left.nil? && !node.right.nil?
    delete_both(node) if !node.left.nil? && !node.right.nil?
  end

  def delete_leaf(node, previous_node)
    previous_node.left == node ? previous_node.left = nil : previous_node.right = nil
  end

  def delete_left_child(node)
    node.data = node.left.data
    node.left = nil
  end

  def delete_right_child(node)
    node.data = node.right.data
    node.right = nil
  end

  def delete_both(node)
    next_highest = node.right
    # second_highest = nil
    until next_highest.left.nil?
      second_highest = next_highest
      next_highest = next_highest.left
    end

    node.data = next_highest.data
    second_highest.left = next_highest.right
  end

  def find(value, node = @root)
    return if node.nil?

    if value < node.data
      find(value, node.left)
    elsif value > node.data
      find(value, node.right)
    else
      node
    end
  end

  def level_order
    current_node = @root
    counter = 1
    queue = [current_node]

    until counter == queue.length + 1
      queue.push(current_node.left) unless current_node.left.nil?
      queue.push(current_node.right) unless current_node.right.nil?
      current_node = queue[counter]
      counter += 1
    end

    if block_given?
      # queue.each do |item|
      #   yield item
      # end
      yield queue
    else
      queue
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
