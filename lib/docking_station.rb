require './lib/bike'

class DockingStation
  attr_reader :bike

  def initialize
  end

  def release_bike
    if @bike == nil
      raise "No bikes, mate!"
    else
      Bike.new
    end
  end

  def dock(bike)
    @bike = bike
  end
end
