class Ships
attr_reader :size
  def initialize(size)
    @size = Array.new(size, "open")
  end

    def alive?(response)
      if @size.include?("S") == false
        p "A ship has been sunk!"
      end
    end
end


#Give the ships brains

#let them take in the playershot/compshot and check to see if they are alive or not.

#They will hold their life and know their locations.
