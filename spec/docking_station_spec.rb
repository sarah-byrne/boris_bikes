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
end
