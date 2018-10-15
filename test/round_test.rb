require 'minitest/autorun'
require 'minitest/pride'
require './lib/round'

class RoundTest < Minitest::Test

  def test_that_round_exist
    round = Round.new

    assert_instance_of Round, round
  end

  def test_it_can_take_a_board_input
    round = Round.new


    assert_equal 4, board_size
  end


end
