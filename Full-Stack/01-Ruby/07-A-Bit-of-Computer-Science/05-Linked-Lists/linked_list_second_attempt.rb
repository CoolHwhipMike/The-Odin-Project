# frozen_string_literal: true

# Class for the list as a whole
class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(value)
    @node = @head
    until @node.nil?
      @previous_node = @node
      @node = @node.next_node
    end
    @node = Node.new(value, nil)
    @previous_node.next_node = @node
  end

  def prepend(value)
    @head = Node.new(value, @head)
  end

  def size
    @count = 0
    @node = @head

    until @node.nil?
      @count += 1
      @node = @node.next_node
    end

    puts count
  end

  def first
    puts @head.value
  end

  def last
    @node = @head
    @node = @node.next_node until @node.next_node.nil?
    puts @node.value
  end

  def at(value)
    @index = 0
    @node = @head

    while @index < value
      @node = @node.next_node
      @index += 1
    end

    puts @node.value
  end

  def pop
    @node = @head
    until @node.next_node.nil?
      @previous_node = @node
      @node = @node.next_node
    end
    @previous_node.next_node = nil
  end

  def contains?(value)
    @node = @head
    until @node.nil?
      return true if @node.value == value

      @node = @node.next_node
    end

    false
  end

  def find(value)
    @node = @head
    @index = 0
    until @node.nil?
      return puts @index if @node.value == value

      @node = @node.next_node
      @index += 1
    end

    nil
  end

  def to_s
    @node = @head
    until @node.nil?
      print "#{@node.value} -> "
      @node = @node.next_node
    end
    print "nil\n"
  end
end

# Class that generates each item in the list
class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node)
    @value = value
    @next_node = next_node
  end
end

ll = LinkedList.new
ll.prepend(10)
ll.append(20)
ll.append(30)
ll.append(40)
ll.to_s
ll.find(50)
# ll.size
# ll.first
# ll.last
# ll.at(2)
