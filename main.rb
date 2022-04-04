
#require all class/objs
require './player_class'

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

def play

player1 = Player.new('Player1')
player2 = Player.new('Player2')

puts "type anything to see player names and scores"
print "> "

input = $stdin.gets.chomp

puts "Thank you for the input: #{input}"

puts "Here are your players: #{player1.name} vs #{player2.name}"
puts "Starting scores: #{player1.name} #{player1.score} & #{player2.name} #{player2.score} "
exit(0)


end

play

