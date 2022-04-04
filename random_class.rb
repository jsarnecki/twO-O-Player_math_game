
class Random
  attr_accessor :num

  def initialize(range1, range2)
    @num = range1 + rand(range2)

  end

end