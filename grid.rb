class Grid
  def initialize(state)
    @grid = state
  end

  def show
    @grid
  end

  def display
    @grid.each do |x|
      x.each do |y|
        print "["
        print y
	print "]"
      end
      print "\n\r"
   end
  end

  def tick
    advance(@grid)
  end

  private

  def advance(state)
  end
end
