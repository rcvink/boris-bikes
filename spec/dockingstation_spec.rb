require 'dockingstation.rb'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}
  it {is_expected.to respond_to :bike}
  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end
  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end
end
