require './lib/ships'
require 'pry'
class ShipFactory

  def initialize
    @ship_yard = []
  end

  def pick_your_ships
    puts "Please pick your ships. Only one of each allowed!"
    puts "1: Carrier"
    puts "2: Battleship"
    puts "3: Submarine"
    puts "4: Cruiser"
    puts "5: Destroyer"

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

  def place_on_board_player
    @ship_yard.map do |ship|
      ship.size.map do |coordinates|
        coordinates = gets.chomp.to_s
      end
    end
  end

  def place_ships_player
    p "Please place your ships."
    @ship_yard.place_on_board
  end
end
binding.pry
