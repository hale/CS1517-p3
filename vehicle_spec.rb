require 'vehicle'

describe "the features and style of the vehicle" do

  it "should be possible to give the vehicle a name when created" do
    Vehicle.new("Ruby").name.should == "Ruby"
  end
  
  it "should be possible to choose how it moves" do
    Vehicle.new.travel_options.should == ["fly","drive","float", "hover"]
  end
  
  it "should be possible to specifiy how it moves" do
     @plane = Vehicle.new
     @plane.travel_choice(1)
    @plane.travel_mode.should == "fly"
  end
  
  it "should be possible to make a suitable sound when moving" do
    @plane = Vehicle.new
    @plane.travel_choice(1)
    @plane.sound.should == "whoosh"
  end
  
  it "should be possible to store a number of vehicles and their types" do
    @plane = Vehicle.new("sally")
    @plane.travel_choice(1)
    @car = Vehicle.new
    @car.travel_choice(2)
    @car.list.should include("george", "drive", "fly","sally")
  end
end
