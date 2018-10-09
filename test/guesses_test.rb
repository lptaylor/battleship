require 'minitest/autorun'
require 'minitest/pride'
require './lib/guesses'

class GuessesTest < Minitest::Test

  def test_that_guesses_exist
    player_guess = Guesses.new("A3")

    assert_instance_of Guesses, player_guess
  end

  def test_that_guesses_is_empty
    guesses = Guesses.new

    assert_equal [], guesses
  end

end
