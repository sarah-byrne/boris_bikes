require './lib/bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise "No bikes, mate!" unless @bikes.count > 0
    @bikes.pop
  end

  def dock(bike)
    raise "Docking station is full mate!!" if @bikes.count == 20
    @bikes.push(bike)
  end
end
