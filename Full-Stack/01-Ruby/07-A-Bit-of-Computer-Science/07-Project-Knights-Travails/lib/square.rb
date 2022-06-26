# frozen_string_literal: true

# Each square on the board is a node.
# In chess, rows are called ranks (y position), and columns are called files (x position).
class Square
  def initialize(file, rank, moves = nil)
    @file = file
    @rank = rank
    @moves = moves
  end
end
