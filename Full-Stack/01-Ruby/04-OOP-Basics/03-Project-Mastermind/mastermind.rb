# frozen_string_literal: true

module Mastermind
  # Human player class
  class Player
    attr_reader :name

    def initialize
      @name = gets.chomp
    end
  end

  # Computer player class
  class Computer
    attr_reader :code

    def generate_code
      @colors = %w[r g y b m c]
      @code = []

      4.times { @code.push(@colors.sample) }
      @code
    end
  end

  # Class that generates a game and desired players
  class Game
    def initialize
      @player1 = Player.new
      @player2 = Computer.new
      @current_code = @player2.generate_code
      @rounds = 12
    end

    def guess
      @current_guess = gets.chomp.split('')
    end

    def check_guess
      @current_guess.each_with_index do |element, index|
        if element == @current_code[index]
          print element
        elsif @current_code.any?(element)
          print 'O'
        else
          print 'X'
        end
      end
    end

    def show_result
      if @current_guess == @current_code
        puts 'You guessed the code!'
      else
        puts 'Sorry, you lost.'
      end
    end

    def play_round
      while @rounds.positive?
        guess
        check_guess
        break if @current_guess == @current_code

        puts ''
        @rounds -= 1
      end
      show_result
    end
  end
end

Mastermind::Game.new.play_round
