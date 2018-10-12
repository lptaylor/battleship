require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'
require 'pry'

class BoardTest < Minitest::Test


  def test_board_exists
    board = Board.new

    assert_instance_of Board, board
  end

  def test_that_you_can_make_a_board
    board = Board.new

    board.generate_a_board("d",4)

    assert_equal 0, board.generate_a_board("d",4)
  end
end
