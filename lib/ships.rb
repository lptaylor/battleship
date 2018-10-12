class Ships
attr_reader :size
def initialize()
ship_list = []

end

def alive?(response)
  if hitpoints.include?("S")
    p "Ship is afloat!"
  else
    p "Ship has been sunk!"
  end
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
















# attr_reader :hitpoints, :length
# def initialize(size)
#   @hitpoints[@size] = New.hash("S")
# end
#
# end
