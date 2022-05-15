# frozen_string_literal: true

# Creates the board
class Game
  attr_accessor :data, :game_over

  def initialize
    generate_data
    draw_board
    @game_over = false
  end

  def generate_data
    @data = {}
    @i = 1
    while @i < 10
      @data[@i.to_s] = @i
      @i += 1
    end
  end

  def draw_board
    puts " #{@data['1']} | #{@data['2']} | #{@data['3']} "
    puts '---|---|---'
    puts " #{@data['4']} | #{@data['5']} | #{@data['6']} "
    puts '---|---|---'
    puts " #{@data['7']} | #{@data['8']} | #{@data['9']} "
  end

  def update(index, input)
    @data[index] = input
    draw_board
  end

  def game_check
    @game_over = true if (data['1'] == data['2'] && data['1'] == data['3']) ||
                         (data['4'] == data['5'] && data['4'] == data['6']) ||
                         (data['7'] == data['8'] && data['7'] == data['9']) ||
                         (data['1'] == data['4'] && data['1'] == data['7']) ||
                         (data['2'] == data['5'] && data['2'] == data['8']) ||
                         (data['3'] == data['6'] && data['3'] == data['9']) ||
                         (data['1'] == data['5'] && data['1'] == data['9']) ||
                         (data['3'] == data['5'] && data['3'] == data['7'])
  end
end

# Class for the players
class Player
  attr_reader :name, :marker

  def initialize
    puts 'Enter your name:'
    @name = gets.chomp
    puts 'Enter your marker:'
    @marker = gets.chomp
  end
end

def play_game
  player1 = Player.new
  player2 = Player.new
  game1 = Game.new
  current_player = player2

  until game1.game_over == true
    current_player = if current_player == player1
                       player2
                     else
                       player1
                     end
    location = gets.chomp
    marker = current_player.marker
    game1.update(location, marker)
    game1.game_check
  end
  puts "#{current_player.name} wins!"
end

play_game
