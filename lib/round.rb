require './lib/board'
require './lib/guesses'




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
    game_sequence
    #comp ship placement
  end
  def game_sequence
    loop do
    @game_sequence = Guesses.new
    player_guess
    # computer_guess



    end
  end


  def player_guess
    @game_sequence.player_shot(@computer_ship_board)
    @game_sequence.player_shots
    #@computer_ship_board.ship_status


  end

  def computer_guess
    @game_sequence.computer_shot(@player_ship_board)
  end

  # def check_status
  #   @game_sequence.what_lives(@computer_ship_board.active_ships.ship_yard)
  #   @game_sequence.what_lives(@player_ship_board.active_ships.ship_yard)
  # end

end
