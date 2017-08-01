require 'dockingstation'

describe DockingStation do
  it "should respond to method release_bike" do
    DockingStation.new.release_bike == true
    #expect(subject).to respond_to :release_bike
  end

  it "should respond to method dock" do
    bikeeee = DockingStation.new.release_bike
    DockingStation.new.dock(bikeeee) == true
  end

  it "should respond to bike" do
    bike = Bike.new
    DockingStation.new.bike == true
  end

  it "should release a bike I just docked" do
    biky = Bike.new
    station = DockingStation.new
    station.dock(biky)
    station.release_bike == biky
  end
  
=begin
  it "should raise error when release bike in the case of no available bike/ empty docking station" do
    station = DockingStation.new
    expect{station.release_bike}.to raise_error("There is no available bike")
  end
=end

end
