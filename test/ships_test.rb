require 'minitest/autorun'
require 'minitest/pride'
require './lib/ships'

class ShipsTest < Minitest::Test

  def test_a_ship_exists
    ship_1 = Ships.new(2)

    assert_instance_of Ships, ship_1
  end

  def test_it_is_aloat
    ship_1 = Ships.new(2)
    ship_1.alive?

    assert_equal "Ship is afloat!", ship_1.alive?
  end
end
