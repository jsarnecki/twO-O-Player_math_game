
class Player

  attr_accessor :name, :score

  def initialize(name)
    @name = name
    @score = 3
  end

  def change_score(check)
    if (check == true)
      true
    elsif (check == false)
      self.score -= 1
    end
  end

end

