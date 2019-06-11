
require './player'
require './game'

def start_game
  player1 = Player.new("Player1")
  player2 = Player.new("Player2")
  current_player = player1

  while current_player.lifes > 0

    game = Game.new(current_player)
    print "> "
    answer = $stdin.gets.chomp.to_i

    if !game.check_answer(answer)
      current_player.lose
    end

    puts "P1: #{player1.lifes}/3 vs P2: #{player2.lifes}/3"

    if current_player.lifes > 0
      puts "----- NEW TURN -----"

      if current_player == player1
        current_player = player2
      else
        current_player = player1
      end

    else
      if current_player == player1
        current_player = player2
      else
        current_player = player1
      end
      puts "#{current_player.name} wins with a score of #{current_player.lifes}/3"
      puts "----- GAME OVER -----"
      puts "Good Bye!"
      return

    end
  end
end

start_game