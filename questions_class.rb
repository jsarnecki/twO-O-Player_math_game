require './random_class'

class Question

  attr_accessor :type

  def initialize()

    @first = Random.new(1, 20)
    @second = Random.new(1, 20)
    @type = Random.new(1, 2)

  end
  
  def ask(player)
    if @type.num == 1
      add(@first, @second, player)
    elsif @type.num == 2
      subtract(@first, @second, player)
    end
  end

    
  def add(first, second, player)

    puts "#{player.name}: What does #{first.num} + #{second.num} equal?"
    print "> "

    answer = first.num + second.num
    user_answer = gets.chomp.to_i

    if (user_answer != answer)
      puts "#{player.name}: INCORRECT"
      puts "------------------"
      player.lose_score
    else
      puts "#{player.name}: CORRECT"
      puts "----------------"
    end

  end

  def subtract(first, second, player)

    puts "#{player.name}: What does #{first.num} - #{second.num} equal?"
    print "> "

    answer = first.num - second.num
    user_answer = gets.chomp.to_i

    if (user_answer != answer)
      puts "#{player.name}: INCORRECT"
      puts "------------------"
      player.lose_score
    else
      puts "#{player.name}: CORRECT"
      puts "----------------"
    end
      
  end

end