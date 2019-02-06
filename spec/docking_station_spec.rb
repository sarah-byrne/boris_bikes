require 'docking_station'
describe DockingStation do
  it { is_expected.to respond_to :release_bike}

  it 'can release a working bike' do
    # Arrange
    docking_station = DockingStation.new
    # Act
    bike = docking_station.release_bike
    # Assert
    expect(bike.working?).to eq(true)
  end

  it 'can dock a bike' do
   expect(DockingStation.new).to respond_to :dock
  end

  it 'can add the bike into the docking station' do
  #Arrange
      docking_station = DockingStation.new
      bike = Bike.new
  #Act
      docking_station.dock(bike)
  #Assert
      expect(docking_station.boris_bikes).to include(bike)
  end

end
