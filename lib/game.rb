require_relative "./player.rb"
class Game
  attr_reader :player_1, :player_2

  ATTACK_VALUE = 10

  def initialize(name1, name2, player_1_class = Player, player_2_class = Player)
    @player_1 = player_1_class.new(name1)
    @player_2 = player_2_class.new(name2)
  end

  def attack(player)
    player.hitpoints -= ATTACK_VALUE
  end
end
