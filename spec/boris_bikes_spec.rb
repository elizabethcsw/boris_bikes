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
    bike = DockingStation.new.release_bike
    DockingStation.new.bike == true

  end

end
