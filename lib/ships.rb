class Ships
attr_reader :size
  def initialize(size)
    Array.new(@size, "open")
    @ship_list = []

  end

    def alive?(response)
      if hitpoints.include?("S")
        p "Ship is afloat!"
      else
        p "Ship has been sunk!"
      end
    end


    # def carrier
    #   carrier = Ships.new(5)
    #   @ship_list << carrier
    # end
    #
    # def battleship
    #   battleship = Ships.new(4)
    #   @ship_list << battleship
    # end
    #
    # def submarine
    #   submarine = Ships.new(3)
    #   @ship_list << submarine
    # end
    #
    # def cruiser
    #   cruiser = Ships.new(3)
    #   @ship_list << crusier
    # end
    #
    # def destroyer
    #   destroyer = Ships.new(2)
    #   @ship_list << destroyer
    # end

end














# attr_reader :hitpoints, :length
# def initialize(size)
#   @hitpoints[@size] = New.hash("S")
# end
#
# end
