require './lib/game'

describe Game do

  let(:player1) { double :player, name: 'X' }
  let(:player2) { double :player, name: 'O' }
  let(:player_class) { double :player_class }
  subject(:game) { described_class.new(player_class) }
  
  before(:each) { allow(player_class).to receive(:new).and_return(player1, player2) }

  describe '#initialize' do
    it 'should create two players at start' do
      game = Game.new(player_class)
      expect(player_class).to have_received(:new).twice
    end

    it 'should start with empty 3x3 board by default' do
      expect(game.board).to eq [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
    end
  end

  describe '#current_player' do
    it 'should return the first player' do
      expect(game.current_player).to eq player1
    end
  end

  describe '#current_player' do
    it 'should return the second player' do
      expect(game.opponent).to eq player2
    end
  end

  describe '#swap_players' do
    it 'should swap current_player and opponent' do
      game.swap_players
      expect(game.current_player).to eq player2
    end
  end
end