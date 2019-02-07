require './lib/docking_station'
require "./lib/bike"

bike = Bike.new
docking_station = DockingStation.new
docking_station.release_bike

# docking_station.dock(bike)
# docking_station.bike
