require 'minitest/autorun'
require 'minitest/pride'
require './lib/ships'

class ShipsTest < Minitest::Test

  def test_a_ship_exists
    ship_1 = Ships.new(2)

    assert_instance_of Ships, ship_1
  end

  def test_you_can_build_battleship
    ship_1 = Ships.battleship

    assert_equal battleship, Ships.battleship
  end
end
