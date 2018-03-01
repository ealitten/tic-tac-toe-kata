require './lib/game'

describe Game do

  let(:player) { double :player }
  let(:player_class) { double :player_class, new: player }
  subject(:game) { described_class.new(player_class) }

  describe '#initialize' do
    it 'should create two players at start' do
      game = Game.new(player_class)
      expect(player_class).to have_received(:new).twice
    end

    it 'should start with empty 3x3 board by default' do
      expect(game.board).to eq [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
    end
  end
end