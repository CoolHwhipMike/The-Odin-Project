# frozen_string_literal: true

module Mastermind
  # Human player class
  class Human
    attr_reader :role, :code

    def initialize
      print 'Do you want to (m)ake or (b)reak the code? '
      @role = gets.chomp
    end

    def generate_code
      @code = gets.chomp.split('')
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
      @player1 = Human.new
      @player2 = Computer.new

      @current_code = if @player1.role == 'm'
                        @player1.generate_code
                      else
                        @player2.generate_code
                      end
      @rounds = 12
    end

    def guess
      @current_guess = if @player1.role == 'm'
                         @player2.generate_code
                       else
                         @player1.generate_code
                       end
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
      if @player1.role == 'm'
        if @current_guess == @current_code
          puts
          puts 'Sorry, you lost.'
        else
          puts
          puts 'You beat the computer!'
        end
      end
      if @player1.role == 'b'
        if @current_guess == @current_code
          puts
          puts 'You guessed the code!'
        else
          puts
          puts 'Sorry, you lost.'
        end
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
