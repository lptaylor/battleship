require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/guesses'
require './lib/board'
require './lib/ship'


class GuessesTest < Minitest::Test

  def test_that_guesses_exist
    player_guess = Guesses.new("A3")

    assert_instance_of Guesses, player_guess
  end

  def test_that_guesses_is_empty
    guesses = Guesses.new

    assert_equal [], guesses
  end

  def test_guesses_can_store_shots


  end

  def test_player_can_enter_shot

  end

  def test_comp_can_enter_shot

  end



end
