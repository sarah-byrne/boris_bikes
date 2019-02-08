require './lib/bike'

class DockingStation
  attr_reader :bikes

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  DEFAULT_CAPACITY = 20

  def release_bike
    raise "No bikes, mate!" if empty?
    @bikes.pop
  end

  def dock(bike)
    raise "Docking station is full mate!!" if full?
    @bikes.push(bike)
  end

  private
  def full?
    @bikes.count == @capacity
  end

  def empty?
    @bikes.count == 0
  end

end
