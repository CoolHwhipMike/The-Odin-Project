# frozen_string_literal: true

require 'colorize'
require 'msgpack'
require_relative 'display'
require_relative 'menu'
require_relative 'save_load'

# Game class that contains the hangman logic.
class Game
  include Menu
  include Display
  include SaveLoad

  def initialize
    welcome_message
    menu
    menu_navigation(@menu_selection)
  end

  def create_secret_word
    File.readlines('data/word_lists/word_list.txt', chomp: true)
        .select { |word| word.length > 5 && word.length < 12 }
        .sample.downcase.chars
  end

  def enter_user_guess
    print 'Enter your guess (or type "save" or "quit"): '
    @guess = gets.chomp.downcase
    validate_guess
  end

  def validate_guess
    if @guess.length != 1 && (@guess != 'save' || @guess != 'quit')
      puts 'Please enter a single character, "save" or "quit".'
      enter_user_guess
    end

    if @misses.include?(@guess) || @hits.include?(@guess)
      puts 'Please try a different letter.'
      enter_user_guess
    end

    @guess
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
      win_message
    else
      lose_message
    end
  end

  def special_guess(user_guess)
    case user_guess
    when 'save'
      save_game
      exit_message
      exit
    when 'quit'
      exit_message
      exit
    end
  end

  def play_game
    @secret_word ||= create_secret_word
    @hits ||= Array.new(@secret_word.length, '_')
    @misses ||= []

    update_display(@hits, @misses)

    while @misses.length < 6
      @user_guess = enter_user_guess

      special_guess(@user_guess)
      check_guess(@secret_word, @user_guess, @hits, @misses)
      update_display(@hits, @misses)

      break if @hits.none?('_')
    end

    check_win(@hits)
  end
end
