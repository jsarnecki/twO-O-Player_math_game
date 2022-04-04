
class Question
  #random questions

  #make obj of either subtract, add
  def initialize(type)
    @type = type
    #depending on the type, manipulates other var?
  end

  def random
    return 1 + rand(20)
  end
  
  def question(player)
    if num == 1
      #addition method
    elsif num == 2
      #subtract method
    end
  end

    
  def add(player)

    first = random()
    second = random()
    #use random to get first + second numbers
    puts "#{player}: What does #{first} + #{second} equal?"
    print "> "
    answer = $stdin.gets.chomp
    if (first + second == answer)
      return true
    else
      return false
    end

  end

  def subtract(player)
    first = random()
    second = random()
    #use random to get first + second numbers
    puts "#{player}: What does #{first} - #{second} equal?"
    print "> "
    answer = $stdin.gets.chomp
    if (first - second == answer)
      return true
    else
      return false;

    end
      
  end


  #method able to manipulate player score?

  #game loop instance?
end