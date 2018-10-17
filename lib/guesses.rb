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
      @player_shots = gets.chomp.to_s.downcase
        if compboard.board[@player_shots] == "O"
          p "You missed"
          compboard.board[@player_shots] = "M"
          break
        elsif compboard.board[@player_shots] == "S" && ship_check
          p "You hit an enemy ship!"
          compboard.board[@player_shots] = "H"
          break
        elsif compboard.board[@player_shots] == "H" || compboard.board[@player_shots] == "M"
          p "You've already placed a shot there, enter a new coordinate."
        end
    end
  end


  def computer_shot(playerboard)

    #playerboard.key gives array just shuffle and pop
    loop do
      coords = playerboard.board.keys.shuffle.pop
      compshot = playerboard.board.values_at(coords)
      switch = playerboard.board[coords]

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

  def ship_alive

  end
  def ship_check
    compboard.active_ships_comp.ship_yard.each do |ship|
      ship.size.each do |space|
        space == @player_shots
      end
    end
  end

end
