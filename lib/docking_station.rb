require './lib/bike'

class DockingStation
  attr_reader :bike

  def initialize
  end

  def release_bike
    raise "No bikes, mate!" unless @bike
    @bike
    # if @bike == nil
    #   raise "No bikes, mate!"
    # else
    #   Bike.new
    # end
  end

  def dock(bike)
    raise "Docking station is full mate!!" if @bike
    @bike = bike
    # if @bike != nil
    #   raise "Docking station is full mate!!"
    # else
    #   @bike = bike
    # end
  end
end
