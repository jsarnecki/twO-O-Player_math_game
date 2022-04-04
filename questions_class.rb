
class Question
  #random questions
  attr_accessor :type

  #make obj of either subtract, add
  def initialize(type)
    @type = type
    #depending on the type, manipulates other var?
  end
  
  def question(first, second, player)
    if type == 1
      add(first, second, player)
    elsif type == 2
      subtract(first, second, player)
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

end