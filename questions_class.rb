
class Question
  #random questions
  attr_accessor :type

  #make obj of either subtract, add
  def initialize(type)
    @type = type
    #depending on the type, manipulates other var?
  end
  
  def question(player)
    if type == 1
      #addition method
    elsif type == 2
      #subtract method
    end
  end

    
  def add(first, second, player)

    #use random to get first + second numbers
    puts "#{player.name}: What does #{first.num} + #{second.num} equal?"
    print "> "
    answer = $stdin.gets.chomp.to_i
    first.num + second.num == answer ? true : false

  end

  def subtract(first, second, player)

    puts "#{player.name}: What does #{first.num} - #{second.num} equal?"
    print "> "
    answer = $stdin.gets.chomp.to_i

    first.num - second.num == answer ? true : false
      
  end


  #method able to manipulate player score?

  #game loop instance?
end