class DockingStation
  attr_reader :bike

  def  release_bike
    raise "There is no available bike" if @bike.nil?
    return @bike
    #@bike
    #Bike.new
  end

  def dock(anybike)
    raise "The dock station is full" if @bike
    @bike=anybike
  end

=begin
  def bike
    @bike
  end
=end

end

class Bike
  def working?
    true
  end
end
