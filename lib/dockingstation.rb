class DockingStation
  DEFAULT_CAPACITY=20
  attr_reader :bike

  def initialize
    @bikes=[]

  end

  def  release_bike
    raise "There is no available bike" if empty?
    return @bike
    #@bike
    #Bike.new
  end

  def dock(anybike)
    raise "Dock station is full" if full?
    @bikes<<anybike
  end

private
  def full?
    @bikes.count>=DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end


end

=begin
  def bike
    @bike
  end
=end


class Bike
  def working?
    true
  end
end
