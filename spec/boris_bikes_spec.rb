require 'dockingstation'

describe DockingStation do
  it "should respond to method release_bike" do
    DockingStation.new.release_bike == true
    #expect(subject).to respond_to :release_bike
  end
end
