class Cell

  attr_writer :live_neighbours

  def initialize(state = false)
    @state = state
  end

  def alive?
    @state
  end

  def dead?
    !alive?
  end

  def next_generation
    @state = two_live_neighbours_and_alive || three_live_neighbours
  end

  def three_live_neighbours
     @live_neighbours == 3
  end

  def two_live_neighbours_and_alive
    alive? && @live_neighbours == 2
  end
end
