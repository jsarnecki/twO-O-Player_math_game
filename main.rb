require './player_class'
require './questions_class'
require './random_class'

# All Run within a function?  
  # Puts: new turn, shows scores
  #starts with player 1: random question
  #waits for $stdin
  #checks if input is correct - returns true/false statement
  #Shows player scores
  #new turn
  #Player 2: random questions
  #...continue
  #Player score drops below 1
  #Player with score above 0 wins statement
  #Game over - goodbye


def whos_turn(p1, p2)
  if (p1.turns > p2.turns)
    return p2
  else
    return p1
  end
end


def match(p1, p2)

  puts "p1: #{p1.score}/3 vs p2: #{p2.score}/3"
  puts "----- NEW TURN -----"

  player = whos_turn(p1, p2)

  first = Random.new(1, 20)
  second = Random.new(1, 20)

  type = Random.new(1, 2)
  match = Question.new(type.num)

  answer = match.question(first, second, player)

  if (answer == true)
    puts "#{player.name}: CORRECT"
    puts "----------------"
  else
    puts "#{player.name}: INCORRECT"
    puts "------------------"
  end

  player.change_score(answer)

  if (p1.score == 0) 
    return p2
  elsif (p2.score == 0)
    return p1
  else
    match(p1, p2)
  end

end


def play

player1 = Player.new('Player1')
player2 = Player.new('Player2')

result = match(player1, player2)

puts "#{result.name} wins with score of #{result.score}/3"
puts "------------------------------"
puts "GAME OVER"
exit(0)

end

play

