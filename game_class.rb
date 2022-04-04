require './player_class'
require './questions_class'
require './random_class'

class Game 
  def initialize()
    @p1 = Player.new('player1')
    @p2 = Player.new('player2')
  end

  def play()

    active_player = @p1

    while (@p1.score > 0 && @p2.score > 0) do

      puts "p1: #{@p1.score}/3 vs p2: #{@p2.score}/3"
      puts "----- NEW TURN -----"
    
      match_question = Question.new()
    
      match_question.ask(active_player)
      if active_player == @p1
        active_player = @p2
      else
        active_player = @p1
      end
    end

    if (@p1.score == 0) 
      winner = @p2
    elsif (@p2.score == 0)
      winner = @p1
    end

    puts "#{winner.name} wins with score of #{winner.score}/3"
    puts "------------------------------"
    puts "GAME OVER"

  end

end
