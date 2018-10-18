class Ships
attr_reader :size, :currentlife, :i
  def initialize(size)
    @size = Array.new(size, "open")
    @currentlife = @size.count
    @i = 0
  end

    def hit?(board) #iterate over hash
      @size.each do |check|
        if board[check].include?("H") == true
          @i += 1
        end
      end
    end

    def sunk
      if @i == @currentlife
        p "They sunk your ship"
      else
        p "Ship is alive"
      end
    end

end


#Give the ships brains

#let them take in the playershot/compshot and check to see if they are alive or not.

#They will hold their life and know their locations.
