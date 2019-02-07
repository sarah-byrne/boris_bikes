require './lib/bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise "No bikes, mate!" unless @bikes
    @bikes
    # if @bike == nil
    #   raise "No bikes, mate!"
    # else
    #   Bike.new
    # end
  end

  def dock(bike)
    raise "Docking station is full mate!!" if @bikes.count == 20
    @bikes.push(bike)
    # if @bike != nil
    #   raise "Docking station is full mate!!"
    # else
    #   @bike = bike
    # end
  end
end
