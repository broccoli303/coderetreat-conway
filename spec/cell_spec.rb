require_relative "spec_helper"

describe Cell do
  context "after creating a Cell object" do
    it "should be alive" do
      cell = Cell.new(true)
      expect(cell).to be_alive
    end
    it "should be dead" do
      cell = Cell.new
      expect(cell).to be_dead
    end
  end

  context "cell is dead and has 3 neighbours" do
    it "should resurrect" do
      cell = Cell.new
      cell.live_neighbours = 3
      cell.next_generation
      expect(cell).to be_alive
    end
  end

  context "cell is dead has < 3 neighbours" do
    it "should remain dead" do
      cell = Cell.new
      cell.live_neighbours = 2
      cell.next_generation
      expect(cell).to be_dead
    end
  end

  context "cell is alive and has 3 neighbours" do
    it "should stay alive" do
      cell = Cell.new(true)
      cell.live_neighbours = 3
      cell.next_generation
      expect(cell).to be_alive
    end
  end

  context "cell is dead and has 2 neighbours" do
    it "should stay dead" do
      cell = Cell.new()
      cell.live_neighbours = 2
      cell.next_generation
      expect(cell).to be_dead
    end
  end

  context "cell is alive and has 1 neighbour" do
    it "should die" do
      cell = Cell.new(true)
      cell.live_neighbours = 1
      cell.next_generation
      expect(cell).to be_dead
    end
  end

  context "cell is alive and has > 3 neighbours" do
    it "should die" do
      cell = Cell.new(true)
      cell.live_neighbours = 4
      cell.next_generation
      expect(cell).to be_dead
    end
  end

  context "cell is alive and has 2 neighbours" do
    it "should stay alive" do
      cell = Cell.new(true)
      cell.live_neighbours = 2
      cell.next_generation
      expect(cell).to be_alive
    end
  end

end
