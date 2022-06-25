# frozen_string_literal: true

# Methods to get info about the tree
module Info
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

  def height(node = @root)
    return -1 if node.nil?

    left_height = height(node.left)
    right_height = height(node.right)
    left_height > right_height ? left_height + 1 : right_height + 1
  end

  def balanced?
    level_order.each do |node|
      left_height = height(node.left)
      right_height = height(node.right)

      return false if (left_height - right_height).abs > 1
    end
    true
  end
end
