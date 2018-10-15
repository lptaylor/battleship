require 'minitest/autorun'
require 'minitest/pride'
require './lib/start'

class StartTest <MiniTest::Test


  def test_it_exists
    start = Start.new

    assert_instance_of Start, start
  end







end
