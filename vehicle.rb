class Vehicle
  attr_accessor :name
  attr_accessor :travel_options
  attr_accessor :travel_mode
  attr_accessor :sound_options
  
  def initialize(n="abc")
    @travel_options = ["fly", "drive", "float", "hover"]
    @sound_options = ["whoosh", "vroom", "swish", "brrrr"]
    @name = n
  end  
  
  def travel_choice(choice=0)
    @travel_mode = travel_options[choice-1]
  end
  
  def sound(choice=0)
    @sound = sound_options[choice]
  end
  
end
