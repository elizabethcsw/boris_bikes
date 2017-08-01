class DockingStation
  attr_accessor :capacity

  def initialize(capacity)
    @bikes=[]
    @capacity=capacity

  end

  def  release_bike
    raise "There is no available bike" if empty?
    @bikes.pop
    #@bike
    #Bike.new
  end

  def dock(anybike)
    raise "Dock station is full" if full?
    @bikes<<anybike
  end

private
attr_reader :bike

  def full?
    @bikes.count>= capacity
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
