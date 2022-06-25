# frozen_string_literal: true

# Methods that make changes to the tree.
module Modify
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

  def rebalance
    new_array = []
    inorder { |node| new_array.push(node.data) }
    @root = build_tree(new_array)
    # puts new_array
  end
end
