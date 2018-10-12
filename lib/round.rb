require './lib/board'
require './lib/ships'

class Round

  def initialize(board, ships, players)

    ship_list = []
  end

  def shot_fired
    #main loop

  end

  def pick_your_ships(choice)
    puts "Please pick your ships."
    puts "1: Carrier"
    puts "2: Battleship"
    puts "3: Submarine"
    puts "4: Cruiser"
    puts "5: Destroyer"

    choice = gets.chomp.to_i
    if choice == 1
      ship_list << carrier
      p "You chose a Carrier"
    elsif choice == 2
      ship_list << battleship
      p "You chose a Battleship"
    elsif choice == 3
      ship_list << submarine
      p "You chose a Submarine"
    elsif choice == 4
      ship_list << cruiser
      p "You chose a Cruiser"
    elsif choice == 5
      shiop_list << destroyer
      p "You chose a Destroyer"
    else
      p "Not a valid choice"
  end

  def ship_factory
    pick_your_ships(1)
      ship_list << carrier
    carrier = Ships.new(5)
    battleship = Ships.new(4)
    submarine = Ships.new(3)
    cruiser = Ships.new(3)
    destroyer = Ships.new(2)
  end
  def place_ships(ships)


  end



end
