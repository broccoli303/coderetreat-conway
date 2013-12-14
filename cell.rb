class Cell

  attr_reader :state

 def initialize(options = {})
   @state = options[:initial_state]
 end

end
