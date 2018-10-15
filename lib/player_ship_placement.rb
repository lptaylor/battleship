require 'pry'
require './lib/round'

class PlayerPlacement

  def initialize(player_ship_board, ship_list)
    @player_ship_board = player_ship_board
    @ship_list = ship_list
  end

  def placement
    p "Here is the board you are playing on with all the coordiantes you can chooose."
    @player_ship_board.print_board
    p "Here is a list of your ships. Please input the first coordinate for the first ship in the form of A1, B2 ect."
    p
  end
end
# binding.pry
