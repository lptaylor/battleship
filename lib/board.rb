require './lib/ships_factory'
class Board

  attr_reader :size, :board, :updater_hash, :active_ships

  def initialize(size)
    @size = size
    @board = Hash.new
    @updater_hash = Hash.new
    @active_ships = []
    @player_coordinates_array = []
    @row = []
    @col = []

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


  def update_board_hash
    @active_ships.ship_yard.map do |hash_array|
      hash_array.map do |hash_space|
        @updater_hash[hash_space] = "S"
      end
    end
    @board.merge!(@updater_hash)
    print_board
  end

  # def ship_placement_check
  #   valid = false
  #   # until valid == true
  #     @active_ships.ship_yard.each do |ships|
  #       ships.each do |coordinates|
  #         @player_coordinates_array << coordinates
  #         if @board[ships] == "S"
  #           p "You can't stack your ships sailor."
  #           # break
  #         elsif @board.keys.include?(coordinates) && checkplace(@player_coordinates_array) && ships_length_check
  #           valid = true
  #           p "Ship is now on the high seas!"
  #         else
  #           p "Invalid ship placement ya scallywag!"
  #         end
  #       end
  #     end
    # end
  # end
  # def checkplace(player_coordinates_array)
    # check_row = @player_coordinates_array[0].split[0]
    # check_col = @player_coordinates_array[0].split[1]
    # @player_coordinates_array.each do |coordinates|
    #     split_coodinates = coordinates.split(//)
    #     @row << split_coodinates[0]
    #     @col << split_coodinates[1]
    #       if @row.all? do |x|
    #         x == check_row
    #         end
    #       elsif @col.all? do |y|
    #         y == check_col
    #       end
    #       else
    #         p "invalid input"
    #       end
    # end
  # end

  def ships_length_check

  end
end
