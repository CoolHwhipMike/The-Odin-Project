# frozen_string_literal: true

# Module containing the start menu logic
module Menu
  def menu
    puts 'Would you like to:'
    puts '1. See the rules'
    puts '2. Start a new game'
    puts '3. Load a saved game'
    puts '4. Exit'
    print 'Enter your selection: '
    @menu_selection = gets.chomp
  end

  def menu_navigation(menu_selection)
    case menu_selection
    when '1'
      puts File.read('data/information/rules.txt')
      menu
      menu_navigation(@menu_selection)
    when '2'
      play_game
    when '3'
      load_game
    when '4'
      exit_message
      exit
    else
      puts
      puts '###########################'.red
      puts 'Please enter a number 1 - 4'.red
      puts '###########################'.red
      puts
    end
  end
end
