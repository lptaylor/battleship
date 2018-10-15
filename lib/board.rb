class Board
  attr_reader :size
  attr_writer :board

  def initialize(size)
    @size = size
    @board = Hash.new
    #generate_a_board
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
end
