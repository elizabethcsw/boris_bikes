class DockingStation
  attr_reader :bike

  def  release_bike
    @bike
    #raise "There is no available bike"
    #Bike.new
  end

  def dock(anybike)
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
