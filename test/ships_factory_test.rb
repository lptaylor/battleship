require 'simplecov'
SimpleCov.start
require './lib/ships_factory'
require './lib/ships'
require 'minitest/autorun'
require 'minitest/pride'
require

class ShipFactoryTest <MiniTest::Test

  def test_it_exists
    ship_1 = ShipsFactory.new

    assert_instance_of Ship, ship_1
  end

  def test_you_can_select_ship

  end

  def test_if_ships_list_holds_ships

  end
end
