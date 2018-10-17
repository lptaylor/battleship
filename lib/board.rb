require './lib/ships_factory'
# require 'pry'
class Board
  attr_reader :size, :board, :updater_hash


  def initialize(size)
    @size = size
    @board = Hash.new
    @updater_hash = Hash.new
    @active_ships = []
    @active_ships_comp = @active_ships
    #@row = []
    #@col = []
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
    ('a'..num_to_alpha[@size]).each {|n| print "    #{n}"}
    print "\n"
    letter_ref = ('a'..num_to_alpha[@size])
    letter_ref.each do |letter|
      print "#{i}.."
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
      selection = @active_ships.pick_your_ships
    end
    p "Here is your board to place your ships"
    print_board
    @active_ships.place_ships_player
    update_board_hash
    # p print_board
      # if ship_placement_check(@active_ships)
      # end
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

  def comp_ship_placement
   inital_space = @board.keys.pop
   @active_ships_comp.place_ships_comp(inital_space)
   update_board_hash

  end

  def ship_placement_check
    @active_ships.each do |ships|
      ships.each do |coordinates|
        if @board[coordinates] == "S"
          p "You can't stack your ships sailor."
        elsif @board.keys.include?(coordinates) && checkplace(coordinates) && ships_length_check
          p "Ship is now on the high seas!"
        else
          p "Invalid ship placement ya scallywag!"
        end
      end
    end
  end

  def checkplace(coordinates)
    coordinates.each do |ships|
      ships.each do |coordinate|
        split_coodinates = coordinate.split
        @row << split_coodinates[0]
        @col << split_coodinates[1]
        if row.all?(user_placement.split[0]) || col.all?(user_placement.split[1])
        end
      end
    end
  end



  def ships_length_check(coordinates)


  end
end
# binding.pry
