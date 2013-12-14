require_relative "spec_helper"

describe Grid do
  context "given an initial state" do
    it "displays the grid on the screen" do
      state = [[" ", " ", " ", " "], 
               [" ", "*", "*", " "],
	       [" ", "*", "*", " "],
	       [" ", " ", " ", " "]]
      grid = Grid.new(state) 
      expect(grid.show).to eq state
      grid.display
      grid.tick
      expect(grid.show).to eq state
      grid.display
    end
  end
end

