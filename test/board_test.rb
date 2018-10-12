require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'

  def test_that_you_can_make_a_board
    board = Board.new

    board.generate_a_board("d",4)

    assert_equal 0, board.generate_a_board("d",4)
  end
