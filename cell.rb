class Cell

  attr_reader :state

 def initialize(options = {})
   @state = options[:initial_state]
 end

 def apply_rules(neighbours = [])
   live_neighbours = 0
   neighbours.each do |neighbour|
     live_neighbours += 1 if neighbour.alive?
   end

   if self.alive?
     case live_neighbours
       when <2
         self.kill
       when > 3
         self.kill
     end
   else
     case live_neighbours
       when 3
         self.resurrect
       end
     end
   end
 end
end
