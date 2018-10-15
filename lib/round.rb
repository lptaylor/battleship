require './lib/board'
require './lib/ships_factory'
# require './lib/player_ship_placement'


class Round
attr_reader :player_ship_board, :player_guess_board, :computer_ship_board
  def initialize
    p "Please choose your board size between 1-26."
    board_size = gets.chomp.to_i
    @player_guess_board = Board.new(board_size)
    @player_ship_board = Board.new(board_size)
    @computer_ship_board = Board.new(board_size)
    p "What ships would you like to play with?"
    @ship_yard = ShipFactory.new.pick_your_ships
  end

  def place_ships_player
    p "Please place your ships."
    # player_ships_placement = PlayerPlacement.new(@player_ship_board, @ship_yard)
    p "Here is the board you are playing on with all the coordiantes you can chooose."
    @player_ship_board.print_board

  end

  def place_ships_computer

  end
  def shot_fired
    #main loop

  end

  def place_ships(ships)

  end



end
