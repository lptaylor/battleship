require './lib/board'
# require './lib/ships_factory'
# require './lib/player_ship_placement'


class Round
attr_reader :player_ship_board, :player_guess_board, :computer_ship_board
  def initialize
    p "Please choose your board size between 1-26."
    board_size = gets.chomp.to_i
    @player_guess_board = Board.new(board_size)
    @player_guess_board.generate_a_board
    @player_ship_board = Board.new(board_size)
    @player_ship_board.generate_a_board
    @computer_ship_board = Board.new(board_size)
    @computer_ship_board.generate_a_board
    p "What ships would you like to play with?"
    @ship_yard = ShipFactory.new.pick_your_ships
    @ship_yard.place_ships_player
  end
  
  def place_ships_computer

  end
  def shot_fired
    #main loop

  end

  def place_ships(ships)

  end



end
