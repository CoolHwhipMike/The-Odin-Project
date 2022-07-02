# frozen_string_literal: true

# I was on the right track and just got too frustrated with everytihng going on this week.
# This solution is from qpongratz/knights-travails. I added the comments in a technique suggested by 100devs.

# Controls what move nodes keep track of.
# Each node is and instance of this class.
class MoveNode
  # This allows us to view the nodes and their parents.
  attr_reader :position, :parent

  # A knight has 8 possible moves. These are represented here. 1 right and 2 up or 2 left and 1 down, etc.
  TRANSFORMATIONS = [[1, 2], [-2, -1], [-1, 2], [2, -1],
                     [1, -2], [-2, 1], [-1, -2], [2, 1]].freeze

  # This keeps track of where we have already been.
  @@history = []

  # initialize is run every time a new node is made. When a new node is created, the position and parent are set
  # to the arguments passed in. The position is then added to the history so we don't revisit it.
  def initialize(position, parent)
    @position = position
    @parent = parent
    @@history.push(position)
  end

  # This finds the valid possible moves from each node. Take the posibilites in TRANSFORMATIONS and add each
  # to the coordinates of the current position (map). Then keep the valid results discarding those trhat are invalid
  # or are already in the history (keep_if and reject). Finally, create nodes from the remaining results using 
  # each result for the position and the original node for the parent (2nd map).
  def children
    TRANSFORMATIONS.map { |t| [@position[0] + t[0], @position[1] + t[1]] }
                   .keep_if { |e| MoveNode.valid?(e) }
                   .reject { |e| @@history.include?(e) }
                   .map { |e| MoveNode.new(e, self) }
  end

  # This makes sure each move is on the board by checking if the value is between 1 and 8 (a chess board is 8x8).
  def self.valid?(position)
    position[0].between?(1, 8) && position[1].between?(1, 8)
  end
end

# Each node has one parent. This recursively prints the parents.
def display_parent(node)
  display_parent(node.parent) unless node.parent.nil?
  p node.position
end

# This take a starting and ending position to calculate the path.
def knight_moves(start_pos, end_position)
  queue = []
  # We need to start somewhere so current_node is set to and new node located at our starting position.
  current_node = MoveNode.new(start_pos, nil)
  # We loop until our ending position is found.
  until current_node.position == end_position
    # This generates the children for the current node then pushes each child into the queue.
    current_node.children.each { |child| queue.push(child) }
    # The current node is then set to the first node in the queue and that is then removed from the queue.
    # This walks through all the chil nodes and adds them to the queue until the end is found.
    current_node = queue.shift
  end
  # Once the end is found, we print each parent, since a node on ly has one parent, until we get to the original position.
  display_parent(current_node)
end

knight_moves([3, 3], [4, 3])
