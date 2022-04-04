
class Player

  attr_accessor :name, :score, :turns

  def initialize(name)
    @name = name
    @score = 3
    @turns = 0
  end

  def change_score(check)
    turn_had
    if (check == true)
      true
    elsif (check == false)
      self.score -= 1
    end
  end

  def turn_had
    self.turns += 1
  end
  
end

