require './lib/board'

class Round
attr_reader :player_ship_board, :player_guess_board, :computer_ship_board
  def initialize
    board_size = get_board_size
    generate_boards(board_size)
    start_round
  end

  def get_board_size
    p "Please choose your board size between 1-26."
    gets.chomp.to_i
  end

  def generate_boards(board_size)
    @player_guess_board = Board.new(board_size)
    @player_guess_board.generate_a_board
    @player_ship_board = Board.new(board_size)
    @player_ship_board.generate_a_board
    @computer_ship_board = Board.new(board_size)
    @computer_ship_board.generate_a_board
  end

  def start_round
    @player_ship_board.ship_placement
    @computer_ship_board.comp_ship_placement
  end
end
