require_relative 'player'

class Game

  attr_reader :board

  def initialize(player_class = Player, starting_board = create_blank_board)
    @players = [player_class.new, player_class.new]
    @board = starting_board
  end

  private

  def create_blank_board
    Array.new(3) { Array.new(3) { nil } }
  end

end