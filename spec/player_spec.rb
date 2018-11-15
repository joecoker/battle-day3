require 'player'

describe Player do
  subject(:will) { Player.new('Will') }
  subject(:joe) { Player.new('Joe') }

  describe "#name" do
    it "should return the players name" do
      expect(will.name).to eq("Will")
    end
  end

  describe '#hitpoints' do
    it 'should show the default hitpoints' do
      expect(will.hitpoints).to eq 100
    end
  end

end
