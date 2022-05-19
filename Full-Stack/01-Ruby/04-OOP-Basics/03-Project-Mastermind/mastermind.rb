# frozen_string_literal: true

module Mastermind
  # CLass that generates a game and desired players
  class Game
    def initialize
      @player1 = Human.new
      @player2 = Computer.new
    end

    def check_guess
      @current_code = @player2.generate_code
      @rounds = 12
      @current_guess = gets.chomp.split('')

      while @rounds.positive?
        p @current_code
        p @current_guess

        break if @current_guess == @current_code

        @current_guess.each_with_index do |element, index|
          if element == @current_code[index]
            puts 'correct'
          elsif @current_code.any?(element)
            puts 'wrong position'
          else
            puts 'wrong'
          end
        end

        @current_guess.clear
        @current_guess = gets.chomp.split('')
        @rounds -= 1

      end
    end
  end

  # Human player class
  class Human
    attr_reader :name

    def initialize
      @name = gets.chomp
    end
  end

  # Computer player class
  class Computer
    attr_reader :code

    def generate_code
      colors = %w[r g y b m c]
      code = []

      4.times { code.push(colors.sample) }
      code
    end
  end
end

include Mastermind
Game.new.check_guess
