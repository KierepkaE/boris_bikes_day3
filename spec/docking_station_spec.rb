require 'docking_station'

describe DockingStation do

  it " responds to release_bike" do
    expect(subject).to respond_to :release_bike
  end

  it " This gets a bike " do
    bike = Bike.new
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bike) }

  it 'docks a bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns docked bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  it 'raises error when docking station is empty' do
    expect{subject.release_bike}.to raise_error("There are no bikes")
  end


end
