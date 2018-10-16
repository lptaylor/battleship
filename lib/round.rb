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
    p "How many ships would you like to play with?"
    ship_count = gets.chomp.to_i
    p "What ships would you like to play with?"
    #loop until true for all
    @ship_yard = ShipFactory.new
    ship_count.times do |selection|
      selection = @ship_yard.pick_your_ships
    end
    @ship_yard.place_on_board_player
      if ship_placement_check(@ship_yard)
      end
  end

  def place_ships_computer

  end
  def shot_fired
    #main loop

  end

  def place_ships(ships)

  end



end
