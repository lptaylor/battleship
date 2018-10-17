require './lib/ships'
# require 'pry'
class ShipFactory
  attr_reader :ship_yard

  def initialize

    #contains the ship objects to be iterated over for lifesigns

   @ship_yard = []
   @comp_ship_yard = []
  end

  def pick_your_ships(board_size)
    if board_size >= 3
      puts "Please pick your ships."
      puts "1: Carrier"
      puts "2: Battleship"
      puts "3: Submarine"
      ship_list
    elsif board_size >= 4
      puts "Please pick your ships."
      puts "1: Battleship"
      puts "2: Submarine"
      puts "3: Cruiser"
      puts "4: Destroyer"
      ship_list
    else
      puts "Please pick your ships."
      puts "1: Submarine"
      puts "2: Cruiser"
      puts "3: Destroyer"
      puts "4: Cruiser"
      puts "5: Destroyer"
      ship_list
    end
  end

  def ship_list
    choice = gets.chomp.to_i
    if choice == 1
      carrier = Ships.new(5)
      p "You chose a Carrier"
      @ship_yard << carrier
    elsif choice == 2
      battleship = Ships.new(4)
      p "You chose a Battleship"
      @ship_yard << battleship
    elsif choice == 3
      submarine = Ships.new(3)
      p "You chose a Submarine"
      @ship_yard << submarine
    elsif choice == 4
      cruiser = Ships.new(3)
      p "You chose a Cruiser"
      @ship_yard << cruiser
    elsif choice == 5
      destroyer = Ships.new(2)
      p "You chose a Destroyer"
      @ship_yard << destroyer
    else
      p "Not a valid choice"
    end
  end

  def place_on_board
    coordinate_array = @ship_yard.map do |ship|
      ship.size.map do |coordinates|
        coordinates = gets.chomp.to_s
      end
    end
    @ship_yard.replace(coordinate_array)
  end
  # def comp_place_on_board(compboard)
  #   coordinate_array = @ship_yard.map do |ship|
  #     key = compboard.keys.shuffle.pop
  #     ship.size.map do |coordinates|
  #       arr = key.split(//)
  #       num = arr[1].to_i
  #     end
  #
  #
  #
  #
  #       coordinates =
  #     end
  #   end
  # end


  def place_ships_player
    p "Please place your ships."
    place_on_board

  end

  def place_on_board_comp
    comp_coordinate_array = @ship_yard.map do |ship|
      ship.size.map do |coordinates|
        coordinates = inital_space += 1
      end
    end
    @comp_ship_yard << comp_coordinate_array
  end

  def place_ships_comp(inital_space)
    place_on_board_comp

  end
end
# binding.pry
