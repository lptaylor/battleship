class Guesses
attr_reader :shots, :player_shots, :computer_shots
  def initialize

    @shots = []
    @player_shots = player_shots
    @computer_shots = computer_shots
  end

  def player_shot(compboard)
#This info goes into ships, this is their desicion to make only check for double shots.
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
  end


  def computer_shot(playerboard)

    #playerboard.key gives array just shuffle and pop
    loop do
      coords = playerboard.keys.shuffle.pop
      compshot = round.player_board.values_at(coords)
      switch = round.player_board[coords]

      if compshot == "O"
        switch = "M"
        p "Your opponent has missed"
        break
      elsif compshot == "S"
        switch = "H"
        p "You've been hit! Check #{coords} for damage!"
        break
      elsif compshot == "H" || compshot == "M"
      end
    end
  end
#Should this be in the board? info is on the board.
#Does it need to go through guess?
  def what_lives(ship_list)
    ship_list.map do |ship|
      if ship.currentlife == 0
        ship_yard.delete(ship)
        p "They destroyed your #{ship}!"
        p "You have #{ship_yard.count} remaining!"
      else
        p "You currently have #{ship_yard.count} ship(s) remaining!"
      end
    end
    ship_list
  end

  def record_shots

    @shots << [@player_shots, @computer_shots]

  end
end
