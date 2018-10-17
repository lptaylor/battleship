require './lib/round'
require 'pry'
class Start
  attr_reader :userinput
    def initialize
      @userinput = userinput
    end

    def game_start
      p "Welcome to BATTLESHIP"
      p "Would you like to (p)lay, read the (i)nstructions or (q)uit?"

    end

    def play
      p "Let the Game begin."
      new_game = Round.new
    end

    def quit
      p "Perhaps another time then."

    end

    def instructions
      p "How to play Battleship"
      p "Select the size of your board when asked. it will be squared off."
      p "Place your ships on the board."
      p "They must be restrained to the board and you can not wrap them around."
      p "You must find the enemy ships by placing shots on the enemy board."
      p "The goal is to sink all enemy ships before they sink all of yours"
      p "Good luck"
    end
end


start = Start.new

start.game_start
capture = gets.chomp.downcase

if capture == "q" || capture == "quit"
  start.quit
elsif capture == "p" || capture == "play"
  start.play
elsif capture == "i" || capture == 'instructions'
  start.instructions
else
  p "Please type 'p', 'i', or 'q' to select an option."
end
