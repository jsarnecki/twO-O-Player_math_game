
#require all class/objs
require './player_class'
require './questions_class'
require './random_class'

#  $stdin - argv

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


=begin

inside of play, have match function, which goes thru each match

  by the end of each match, the play function 
  checks if any player score is below 0

  each match generates a new Question object

=end

def play

first = Random.new(1, 20)
second = Random.new(1, 20)

# puts random.num

player1 = Player.new('Player1')
player2 = Player.new('Player2')

test_q = Question.new(1)

score_board = "p1: #{player1.score} vs p2: #{player2.score}"

puts score_board
puts "-----New Turn-----"
answer = test_q.add(first, second, player1)
# print "> "
player1.change_score(answer)

puts "p1: #{player1.score} vs p2: #{player2.score}"
puts "-----New Turn-----"

first = Random.new(1, 20)
second = Random.new(1, 20)

test2 = Question.new(2)

answer = test2.subtract(first, second, player2)
player2.change_score(answer)

puts "p1: #{player1.score} vs p2: #{player2.score}"
# input = $stdin.gets.chomp

# puts "Here are your players: #{player1.name} vs #{player2.name}"
# puts "Starting scores: #{player1.name} #{player1.score} & #{player2.name} #{player2.score} "
# exit(0)


end

play

