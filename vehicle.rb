class Vehicle
  attr_accessor :name, :travel_options, :travel_mode, :sound_options, :list
  
  def initialize(n="george")
    @travel_options = ["fly", "drive", "float", "hover"]
    @sound_options = ["whoosh", "vroom", "swish", "brrrr"]
    @@list = Array.new    
    list.push(@name = n)

  end  
  
  def travel_choice(choice=0)
    @travel_mode = travel_options[choice-1]
    list.push(travel_mode)
  end
  
  def sound(choice=0)
    @sound = sound_options[choice]
  end
  
  def list
    return @@list
  end
end


