
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

random = Random.new(1, 20)

puts random.num

player1 = Player.new('Player1')
player2 = Player.new('Player2')

puts "type anything to see player names and scores"
print "> "

input = $stdin.gets.chomp

puts "Compare against  #{input}"

puts "Here are your players: #{player1.name} vs #{player2.name}"
puts "Starting scores: #{player1.name} #{player1.score} & #{player2.name} #{player2.score} "
exit(0)


end

play

