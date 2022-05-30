# frozen_string_literal: true

require 'colorize'
require 'msgpack'
require_relative 'display'
require_relative 'menu'
require_relative 'save_load'

# Game class that contains the hangman logic.
class Game
  include Display
  include Menu
  include SaveLoad

  def initialize
    welcome_message
    menu
    menu_navigation(@menu_selection)
  end

  def create_secret_word
    @dictionary = File.readlines('data/word_lists/word_list.txt', chomp: true)
    @dictionary.select { |word| word.length > 5 && word.length < 12 }.sample.chars
  end

  def enter_user_guess
    print 'Enter your guess (or type "save"): '
    gets.chomp.downcase
  end

  def check_guess(secret_word, user_guess, hits, misses)
    @match = false
    secret_word.each_with_index do |letter, index|
      if user_guess == letter
        hits[index] = letter
        @match = true
      end
    end

    misses.push(user_guess) unless @match
  end

  def check_win(hits)
    if hits.none? { |letter| letter == '_' }
      puts 'You win'
    else
      puts 'You lose'
    end
  end

  def play_game
    @secret_word ||= create_secret_word
    @hits ||= Array.new(@secret_word.length, '_')
    @misses ||= []
    update_display(@hits, @misses)

    while @misses.length < 6
      @user_guess = enter_user_guess
      if @user_guess == 'save'
        save_game
        exit
      end
      check_guess(@secret_word, @user_guess, @hits, @misses)
      update_display(@hits, @misses)
      break if @hits.none?('_')
    end

    check_win(@hits)
  end
end
