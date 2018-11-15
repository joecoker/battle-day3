class Player
  attr_reader :name
  attr_accessor :hitpoints

  HITPOINTS = 100
  ATTACK_HITPOINTS = 10

  def initialize(name)
    @name = name
    @hitpoints = HITPOINTS
  end

  def attack(player)
    player.hitpoints -= ATTACK_HITPOINTS
  end

end
