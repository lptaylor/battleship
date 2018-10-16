require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/ships'
require './lib/board'

class ShipsTest < Minitest::Test

  def test_a_ship_exists
    ship_1 = Ships.new(2)

    assert_instance_of Ships, ship_1
  end

  def test_knows_its_location


  end

  def test_the_ship_can_check_if_hit

  end

  def test_it_knows_when_missed

  end


end
