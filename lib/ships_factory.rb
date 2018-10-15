require './lib/ships'

class ShipFactory

  def initialize
    #contains the ship objects to be iterated over for lifesigns
    @ship_list = []
  end

  def pick_your_ships
    puts "Please pick your ships."
    puts "1: Carrier"
    puts "2: Battleship"
    puts "3: Submarine"
    puts "4: Cruiser"
    puts "5: Destroyer"

    choice = gets.chomp.to_i
    if choice == 1
      carrier = Ships.new(5)
      @ship_list << carrier
      p "You chose a Carrier"
    elsif choice == 2
      battleship = Ships.new(4)
      @ship_list << battleship
      p "You chose a Battleship"
    elsif choice == 3
      submarine = Ships.new(3)
      @ship_list << submarine
      p "You chose a Submarine"
    elsif choice == 4
      cruiser = Ships.new(3)
      @ship_list << cruiser
      p "You chose a Cruiser"
    elsif choice == 5
      destroyer = Ships.new(2)
      @ship_list << destroyer
      p "You chose a Destroyer"
    else
      p "Not a valid choice"
    end
  end
end
