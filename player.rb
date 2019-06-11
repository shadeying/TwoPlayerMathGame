class Player
  attr_reader :name, :lifes

  def initialize(name)
    @name = name
    @lifes = 3
  end

  def lose
    @lifes -= 1
  end
end
