require 'game'
describe Game do
  let(:joe) {double :joe, name: "Joe", hitpoints: 100}
  let(:will) {double :will, name: "Will", hitpoints: 100}
  let(:player_1_class) {double :player_1_class, new: joe}
  let(:player_2_class) {double :player_2_class, new: will}

  # before (:each) do
  #   game = Game.new("Joe", "Will", player_1_class, player_2_class)
  # end

  it "creates 1 players in the Game class called Joe" do
    game = Game.new("Joe", "Will", player_1_class, player_2_class)
    expect(game.player_1.name).to eq "Joe"
  end
  it "creates 1 players in the Game class called Will" do
    game = Game.new("Joe", "Will", player_1_class, player_2_class)
    expect(game.player_2.name).to eq "Will"
  end
  it "player 1 attack on player 2 reduces hitpoints" do
    game = Game.new("Joe", "Will", player_1_class, player_2_class)
    allow(will).to receive(:hitpoints=).and_return(90)
    allow(will).to receive(:hitpoints).and_return(90)
    game.attack(game.player_2)
    expect(game.player_2.hitpoints).to eq 90
  end

end
