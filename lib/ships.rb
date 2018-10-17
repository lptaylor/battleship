class Ships
attr_reader :size
  def initialize(size)
    @size = Array.new(size, "open")
    @currentlife = @size.count
  end

    def hit?(board) #iterate over hash
      i = 0
      @size.each do |check|
        if board[check].include?("H") == true
          i += 1
        end
      end
        if i == @currentlife
           @currentlife = 0
        end
        p "steve"
    end
end


#Give the ships brains

#let them take in the playershot/compshot and check to see if they are alive or not.

#They will hold their life and know their locations.
