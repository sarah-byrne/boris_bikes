require 'docking_station'


describe DockingStation do

  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to(:dock).with(1).argument }
  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq [bike]
  end
  it { is_expected.to respond_to(:bikes) }
  # it { is_expected.to }
  it "raises an error when no bikes are available" do
    expect { subject.release_bike == nil }.to raise_error.with_message("No bikes, mate!")
  end

  it "doesn't accept more bikes than its capacity" do
    20.times { subject.dock(Bike.new) }
    expect { subject.dock(Bike.new) }.to raise_error.with_message("Docking station is full mate!!")
  end

end
