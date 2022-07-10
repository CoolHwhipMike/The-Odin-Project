# frozen_string_literal: true

# class to create and draw board
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
