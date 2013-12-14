require_relative "spec_helper"

describe Cell do
  context "given an initial state" do
    it "is alive" do
      cell = Cell.new({:initial_state => "alive"})
      expect(cell.state).to eq "alive"
    end
    it "is dead" do
      cell = Cell.new({:initial_state => "dead"})
      expect(cell.state).to eq "dead"
    end
  end
  
end
