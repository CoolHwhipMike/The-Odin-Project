# frozen_string_literal: true

# Creates and manages the board

class Board
  attr_accessor :data

  def initialize
    generate_board
    draw_board
  end

  def generate_board
    @data = {}
    (1..9).each { |i| @data[i.to_s] = i }
  end

  def draw_board
    puts " #{@data['1']} | #{@data['2']} | #{@data['3']} "
    puts '---|---|---'
    puts " #{@data['4']} | #{@data['5']} | #{@data['6']} "
    puts '---|---|---'
    puts " #{@data['7']} | #{@data['8']} | #{@data['9']} "
  end

  def update_board(index, input)
    @data[index] = input
    draw_board
  end
end

# Creates and manages players
class Player
  attr_reader :name, :marker

  def initialize
    puts 'Enter your name:'
    @name = gets.chomp
    puts 'Enter your marker:'
    @marker = gets.chomp
  end
end

# "#{current_player.name} Wins!"
def game_check(game)
  # return "It's a tie." if rounds.zero?
  true if (game.data['1'] == game.data['2'] && game.data['1'] == game.data['3']) ||
          (game.data['4'] == game.data['5'] && game.data['4'] == game.data['6']) ||
          (game.data['7'] == game.data['8'] && game.data['7'] == game.data['9']) ||
          (game.data['1'] == game.data['4'] && game.data['1'] == game.data['7']) ||
          (game.data['2'] == game.data['5'] && game.data['2'] == game.data['8']) ||
          (game.data['3'] == game.data['6'] && game.data['3'] == game.data['9']) ||
          (game.data['1'] == game.data['5'] && game.data['1'] == game.data['9']) ||
          (game.data['3'] == game.data['5'] && game.data['3'] == game.data['7'])
end

def play_game
  puts 'Player 1'
  player1 = Player.new
  puts 'Player 2'
  player2 = Player.new
  rounds = 9
  game = Board.new

  while rounds.positive?
    current_player = player1 if rounds.odd?
    current_player = player2 if rounds.even?

    print "#{current_player.name}, make you move: "
    location = gets.chomp
    marker = current_player.marker
    game.update_board(location, marker)

    if game_check(game)
      rounds = 0
    else
      rounds -= 1
    end
  end
  if game_check(game)
    puts "#{current_player.name} Wins!"
  else
    puts "It's a tie."
  end
end
play_game
