require 'minitest/autorun'
require 'minitest/pride'
require './lib/guesses'

class RoundTest < Minitest::Test

  def test_that_round_exist
    player_guess = Round.new("A3")

    assert_instance_of Round, player_guess
  end



end
