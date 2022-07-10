# frozen_string_literal: true

require_relative 'lib/game'
require_relative 'lib/board'
require_relative 'lib/player'

player1 = Player.new('one', 'x')
player2 = Player.new('two', 'o')

test = Game.new
test.play_game(player1, player2)