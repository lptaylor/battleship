class Guesses
attr_reader :shots
  def initialize(turn)

    @shots = []
    @player_shots = player_shots
    @computer_shots = computer_shots
  end

  def player_guess

    loop do
      p "Please input a guess such as 'a1' or 'c3'."
      @player_shots = gets.chomp.downcase
        if compboard[@player_shots] == "O"
          p "You missed"
          compboard[@player_shots] = "M"
          break
        elsif compboard[@player_shots] == "S"
          p "You hit an enemy ship!"
          compboard[@player_shots] = "H"
          break
        elsif compboard[@player_shots] == "H" || compboard[@player_shots] == "M"
          p "You've already placed a shot there, enter a new coordinate."
        end
    end
  

  def computer_guess
    loop do
      coord2 = rand(1..playerboard.size)
      coord1 = playerboard.num_to_alpha[rand(1..playerboard.size)]
      compshot = playerboard["#{coord1}#{coord2}"]

      if compshot == "O"
        compshot = "M"
        p "Your opponent has missed"
        break
      elsif compshot == "S"
        compshot = "H"
        p "You've been hit! Check #{coord1}#{coord2} for damage!"
        break
      elsif compshot == "H" || compshot == "M"
      end

      end



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
