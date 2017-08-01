require 'dockingstation'

describe Bike do
  it "should respond to method working?" do
    bike=Bike.new
    #bike.working? == true
    expect(bike.working?).to be true
  end

end
