require './lib/player'

describe Player do

  subject(:player) { described_class.new() }

  describe '#initialize' do
    it 'should store player name' do
      player = Player.new('X')
      expect(player.name).to eq 'X'
    end

  end
end