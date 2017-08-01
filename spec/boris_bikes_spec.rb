require 'dockingstation'

describe DockingStation do
  describe '#release_bike' do
    it "should release a bike I just docked" do
      biky = Bike.new
      station = DockingStation.new
      station.dock(biky)
      station.release_bike == biky
    end

    it "should raise error when release bike in the case of no available bike (empty) in the docking station" do
      biky = Bike.new
      station = DockingStation.new
      expect{station.release_bike}.to raise_error("There is no available bike")
    end
  end

  describe '#dock()' do
    it "should raise error when attempt to dock more than 20 bike" do
      station = DockingStation.new
      20.times {station.dock(Bike.new)}
      biky=Bike.new
      expect{station.dock(biky)}.to raise_error ("Dock station is full")
    end

  end

end

=begin
  it "should raise error when release bike in the case of no available bike/ empty docking station" do
    station = DockingStation.new
    expect{station.release_bike}.to raise_error("There is no available bike")
  end

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

  it "should raise error when attempt to dock more than 1 bike" do
    biky=Bike.new
    biko=Bike.new
    station = DockingStation.new
    station.dock(biky)
    expect{station.dock(biko)}.to raise_error
  end
=end
