# frozen_string_literal: true

# Contains the various traversal patterns
module Traverse
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

    block_given? ? queue.each { |item| yield item } : queue
  end

  def inorder(node = @root, queue = [])
    return if node.nil?

    inorder(node.left, queue)
    queue.push(node)
    inorder(node.right, queue)

    block_given? ? queue.each { |item| yield item } : queue
  end

  def preorder(node = @root, queue = [])
    return if node.nil?

    queue.push(node)
    preorder(node.left, queue)
    preorder(node.right, queue)

    block_given? ? queue.each { |item| yield item } : queue
  end

  def postorder(node = @root, queue = [])
    return if node.nil?

    postorder(node.left, queue)
    postorder(node.right, queue)
    queue.push(node)

    block_given? ? queue.each { |item| yield item } : queue
  end
end
