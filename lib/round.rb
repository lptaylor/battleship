require './lib/board'
require './lib/ships_factory'

class Round

  def initialize
    p "Please choose your board size between 1-26."
    board_size = gets.chomp
    @player_board = Board.new(board_size)
    @player_ship_board = Board.new(board_size)
    @computer_board = Board.new(board_size)
    p "What ships would you like to play with?"
    @ships_for_game = ShipFactory.new.pick_your_ships
  end

  def place_ships_player
    p "Please place you ships."
    
  end

  def place_ships_computer

  end
  def shot_fired
    #main loop

  end

  def place_ships(ships)

  end



end
