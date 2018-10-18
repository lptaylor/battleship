require './lib/ships_factory'
class Board

  attr_reader :size, :board, :updater_hash, :active_ships, :active_ships_comp

  def initialize(size)
    @size = size
    @board = Hash.new
    @updater_hash = Hash.new
    @active_ships = []
    @active_ships_comp = []
    @player_coordinates_array = []
    @row = []
    @col = []
    @comp_active_ships = []
    @comp_updater_hash = Hash.new
  end

  def generate_a_board
    ('a'..num_to_alpha[@size]).each do |letter|
      (1..@size).each do |num|
        @board["#{letter}#{num}"] = "O"
      end
    end
    return @board
  end

  def num_to_alpha
     {
       1=>"a",2=>"b",3=>"c",4=>"d",5=>"e",6=>"f",7=>"g",
       8=>"h",9=>"i",10=>"j",11=>"k",12=>"l",13=>"m",14=>"n",
       15=>"o",16=>"p",17=>"q",18=>"r",19=>"s",20=>"t",
       21=>"u",22=>"v",23=>"w",24=>"x",25=>"y",26=>"z"
     }
  end

  def print_board
    p "Here is the board you are playing on with all the coordinates you can chooose."
    i = 01
    (1..@size).each {|n| print "    #{n}"}
    print "\n"
    letter_ref = ('a'..num_to_alpha[@size])
    letter_ref.each do |letter|
      print "#{num_to_alpha[i]}.."
      @board.keys.each do |slip|
        if slip.include?(letter)
          print @board.values_at(slip)
        end
      end
      print "\n"
      i += 1
    end
    return "Battlefield"
  end
  def ship_placement
    p "How many ships would you like to play with?"
    ship_count = gets.chomp.to_i
    p "What ships would you like to play with?"
    #loop until true for all
    @active_ships = ShipFactory.new
    ship_count.times do |selection|
      selection = @active_ships.pick_your_ships(@size)
    end
    p "Here is your board to place your ships"
    print_board
    @active_ships.place_ships_player
    update_board_hash
     # if ship_placement_check
     # end
  end
  def comp_ship_placement
    @comp_active_ships = ShipFactory.new
    ship_count = 2
    ship_count.times do |selection|
      selection = @comp_active_ships.comp_ship_list
    end
    comp_update_board_hash

  end


  def update_board_hash
    @active_ships.ship_yard.map do |hash_array|
      hash_array.map do |hash_space|
        @updater_hash[hash_space] = "S"
      end
    end
    @board.merge!(@updater_hash)
    print_board
  end


  def comp_update_board_hash
    @comp_active_ships.ship_yard.map do |hash_array|
      hash_array.map do |hash_space|
        @comp_updater_hash[hash_space] = "S"
      end
    end
    @board.merge!(@comp_updater_hash)
    print_board
  end

  def ship_placement_check
    @active_ships.ship_yard.each do |ships|
      ships.each do |coordinates|
        @player_coordinates_array << coordinates
        if @board[coordinates] == "S"
          p "You can't stack your ships sailor."
        elsif @board.keys.include?(coordinates) && checkplace(@player_coordinates_array) && ships_length_check
          p "Ship is now on the high seas!"
        else
          p "Invalid ship placement ya scallywag!"
        end
      end
    end
  end

  def checkplace(player_coordinates_array)
    @player_coordinates_array.each do |coordinates|
        split_coodinates = coordinates.split
        @row << split_coodinates[0]
        @col << split_coodinates[1]
          if row.all?(@player_coordinates_array[0].split[0]) || col.all?(@player_coordinates_array[1].split[1])
          end
    end
  end

  def ships_length_check

  end
end
