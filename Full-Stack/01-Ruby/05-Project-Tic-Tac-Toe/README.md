# Tic Tac Toe

There's not much to put here. Just make Tic Tac Toe I guess.
The hint is to think about what should be a class, instance, etc.

## Pseudocode
There should be a player class that picks a name and symbol on creation. Would also have a method to choose a move.
Then make a board class that will draw a board on creation. I need a method to update the board and check for a winner somewhere...

class Game
    def initialize()
        draw_board()
    end

    def draw_board
        puts "   |   |   "
        puts "---|---|---"
        puts "   |   |   "
        puts "---|---|---"
        puts "   |   |   "
    end
end

class Player
    def initialize(name, marker)
        @name = name
        @marker = marker
end
