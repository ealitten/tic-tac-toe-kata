require_relative 'player'

class Game

  attr_reader :board

  def initialize(player_class = Player, starting_board = create_blank_board)
    @players = [player_class.new('X'), player_class.new('O')]
    @board = starting_board
  end

  def claim(x,y)
    @board[x][y] = current_player.name if @board[x][y].nil?
  end

  def current_player
    @players.first
  end

  def opponent
    @players.last
  end

  def swap_players
    @players.reverse!
  end

  private

  def create_blank_board
    Array.new(3) { Array.new(3) { nil } }
  end

end