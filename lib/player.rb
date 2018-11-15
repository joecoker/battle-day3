
class Player
  attr_reader :name
  attr_accessor :hitpoints

  HITPOINTS = 100

  def initialize(name)
    @name = name
    @hitpoints = HITPOINTS
  end

end
