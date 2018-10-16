require './lib/ships_factory'
class Board
  attr_reader :size, :board


  def initialize(size)
    @size = size
    @board = Hash.new
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
    p "Here is the board you are playing on with all the coordiantes you can chooose."
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

  def checkplace
    user_ship_array.each do |ships|
      ships.each do |coordinate|
      split_coodinates = coordiante.split
      @row << split_coodinates[0]
      @col << split_coodinates[1]
      end
    end
      if row.all?(user_placement.split[0]) || col.all?(user_placement.split[1])
      end
  end

  def ship_placement
        if @board.key.include?(user_placement) && checkplace && ships_length_check
          p "Ship is now on the high seas!"
        else
          p "Invalid ship placement ya scallywag!"
        end
  end
end
