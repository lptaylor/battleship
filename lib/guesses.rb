class Guesses
attr_reader :shots
  def initialize(turn)

    @shots = []
    @player_shots = player_shots
    @computer_shots = computer_shots
  end

  def player_guess

  end



  def computer_guess


  end

  def guess_hit?()


  end

  loop do
    p player_shot_board
    p player_ship_board
    player_guess
    player.guess_hit?
    player.feedback
    break if computer_ship_board != s

    p computer_shot_board
    p computer_ship_board
    computer_guess
    computer.guess_hit?
    computer.feedback
    break if player_ship_board != s

    p "No winner next turn"

    record_shots
  end


  def record_shots

    @shots << [@player_shots, @computer_shots]

  end
end
