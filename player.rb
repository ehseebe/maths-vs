  # methods
  # --------> keep score, lives
# Player 1
# Player 2
# 3 lives
# lose life if wrong answer

Class Player
  attr_accessor :name, :score

  def initialize(name)
    self.name = name
    self.score = 0
  end

  def update_score
    self.score += 1
  end

end

