require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'

class BoardTest <MiniTest::Test

  def test_board_instance_can_be_made
    board = Board.new(1)

    assert_instance_of Board, board
  end

  def test_board_can_make_board_hash
    board = Board.new(2)

    board.generate_a_board
    hash = {"a1"=>"O", "a2"=>"O", "b1"=>"O", "b2"=>"O"}

    assert_equal hash, board.generate_a_board
  end
end
