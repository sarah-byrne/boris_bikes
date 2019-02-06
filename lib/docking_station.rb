require_relative 'bike'

class DockingStation
  attr_reader :boris_bikes

  def initialize
    @boris_bikes = []
  end

  def release_bike
    Bike.new
  end

  def dock(bike)
    @boris_bikes.push(bike)
  end
end
