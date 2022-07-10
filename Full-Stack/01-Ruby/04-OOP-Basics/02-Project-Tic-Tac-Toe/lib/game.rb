# frozen_string_literal: true

# class to play tic tac toe
class Game
  def check_row(game)
    # win conditions for rows
    (game.data['1'] == game.data['2'] && game.data['1'] == game.data['3']) ||
    (game.data['4'] == game.data['5'] && game.data['4'] == game.data['6']) ||
    (game.data['7'] == game.data['8'] && game.data['7'] == game.data['9'])
  end

  def check_column(game)
    # win conditions for columns
    (game.data['1'] == game.data['4'] && game.data['1'] == game.data['7']) ||
    (game.data['2'] == game.data['5'] && game.data['2'] == game.data['8']) ||
    (game.data['3'] == game.data['6'] && game.data['3'] == game.data['9'])
  end

  def check_diagonal(game)
    # win conditions for diagonals
    (game.data['1'] == game.data['5'] && game.data['1'] == game.data['9']) ||
    (game.data['3'] == game.data['5'] && game.data['3'] == game.data['7'])
  end

  def game_over?(game)
    check_row(game) || check_column(game) || check_diagonal(game)
  end

  def player_turn(rounds, player1, player2)
   current_player = rounds.odd? ? player1 : player2 
  end
  
  def play_game(player1, player2)
    rounds = 9
    game = Board.new

    while rounds.positive?
      # current_player = player1 if rounds.odd?
      # current_player = player2 if rounds.even?
      player_turn(rounds, player1, player2)

      print "#{current_player.name}, make you move: "
      location = gets.chomp
      marker = current_player.marker
      game.update_board(location, marker)

      game_over?(game) ? rounds = 0 : rounds -= 1
    end

    game_over?(game) ? (puts "#{current_player.name} Wins!") : (puts "It's a tie.")
  end
end
