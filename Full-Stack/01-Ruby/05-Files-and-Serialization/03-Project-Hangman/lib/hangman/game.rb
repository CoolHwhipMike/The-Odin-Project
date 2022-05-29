# frozen_string_literal: true

require 'colorize'
require 'msgpack'
require_relative 'display'

# Game class that contains the hangman logic.
class Game
  include Display

  def initialize
    start_screen
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
    @secret_word = create_secret_word
    @hits = Array.new(@secret_word.length, '_')
    @misses = []
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

  def menu_navigation(menu_selection)
    case menu_selection
    when '1'
      puts File.read('data/information/rules.txt')
    when '2'
      play_game
    when '3'
      load_game
    when '4'
      exit
    else
      puts
      puts '###########################'.red
      puts 'Please enter a number 1 - 4'.red
      puts '###########################'.red
      puts
    end
  end

  def save_game
    contents = MessagePack.dump({
                              secret_word: @secret_word,
                              hits: @hits,
                              misses: @misses
                            })
    file = File.open('save_file', 'w')
    file.write contents
    file.close
  end

  def load_game
    file = File.open('save_file', 'r')
    contents = MessagePack.unpack(file)
    @secret_word = contents['secret_word']
    @hits = contents['hits']
    @misses = contents['misses']
    print @secret_word
    puts
    print @hits
    puts
    print @misses
  end
end
