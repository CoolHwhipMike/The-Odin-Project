# frozen_string_literal: true

def create_secret_word
  dictionary = File.readlines('word_list.txt', chomp: true)
  dictionary.select { |word| word.length > 5 && word.length < 12 }.sample.split('')
end

def update_display(hits, misses)
  print "#{hits}\n"
  puts 'misses'
  print "#{misses}\n"
end

def enter_user_guess
  print 'Enter your guess: '
  gets.chomp.downcase
end

def check_guess(secret_word, user_guess, hits, misses)
  match = false
  secret_word.each_with_index do |letter, index|
    if user_guess == letter
      hits[index] = letter
      match = true
    end
  end

  misses.push(user_guess) unless match
end

def check_win(hits)
  if hits.none? { |letter| letter == '_' }
    puts 'You win'
  else
    puts 'You lose'
  end
end

def play_game
  secret_word = create_secret_word
  hits = Array.new(secret_word.length, '_')
  misses = []

  while misses.length < 6
    user_guess = enter_user_guess
    check_guess(secret_word, user_guess, hits, misses)
    update_display(hits, misses)
    break if hits.none?('_')
  end

  check_win(hits)
end

play_game

#       _____
#       |   |
#       |   O
#       |  /|\
#       |  / \
#  _____|______
