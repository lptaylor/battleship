class Ships
attr_reader :size
  def initialize(size)
    @size = Array.new(size, "open")
  end

    def alive?(response)
      if hitpoints.include?("S")
        p "Ship is afloat!"
      else
        p "Ship has been sunk!"
      end
    end
end
