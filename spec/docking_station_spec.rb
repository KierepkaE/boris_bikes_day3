require 'docking_station'

describe DockingStation do

  it " This gets a bike " do

    bike = Bike.new

    expect(bike).to be_working
    
  end

  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to(:bike) }
  it { is_expected.to respond_to(:release_bike) }

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises error when docking station is empty' do

      expect{ subject.release_bike }.to raise_error "There are no bikes"

    end

  end

  describe '#dock' do

    it 'docks a bike' do

      bike = Bike.new
      expect(subject.dock(bike)).to eq bike

    end

    it 'raises error when docking station is full' do

      DockingStation::DEFAULT_CAPACITY.times do
        subject.dock(Bike.new)
      end

      expect{ subject.dock(Bike.new) }.to raise_error "Docking station full"

    end
  end
end
