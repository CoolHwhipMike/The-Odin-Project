# frozen_string_literal: true

# Contains the methods to manage the game display.
module Display
  def welcome_message
    puts 'Welcome to Ruby Hangman!'.magenta.underline
  end

  def exit_message
    puts 'Thanks for Playing!'.yellow
  end

  def win_message
    puts 'You Win!'
  end

  def lose_message
    puts 'Sorry, You Lost.'
  end

  def update_display(hits, misses)
    print "#{hits}\n"
    puts 'misses'
    print "#{misses}\n"
  end
end
