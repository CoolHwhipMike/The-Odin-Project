# frozen_string_literal: true

# Contains the methods to manage the game display.
module Display
  def start_screen
    puts 'Welcome to Ruby Hangman!'.magenta.underline
    puts 'Would you like to:'
    puts '1. See the rules'
    puts '2. Start a new game'
    puts '3. Load a saved game'
    puts '4. Exit'
    print 'Enter your selection: '
    @menu_selection = gets.chomp
  end

  def update_display(hits, misses)
    print "#{hits}\n"
    puts 'misses'
    print "#{misses}\n"
  end
end
