class Player
  attr_accessor :name, :lives

  def initialize(name)
    self.name = name
    self.lives = 3
  end

  def win_life
    self.lives += 1
  end

  def lose_life
    self.lives -= 1
  end

end

