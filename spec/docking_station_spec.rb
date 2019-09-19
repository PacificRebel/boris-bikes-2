require 'docking_station'

describe DockingStation do
  it "responds to release_bike" do
    instance = DockingStation.new
    expect(instance).to respond_to(:release_bike)
  end
  # it { is_expected.to respond_to release_bike }

  describe '#release_bike' do
    it "raises an error when there are no bikes available" do
      # bike = Bike.new
      # subject.dock(bike)
      #release docked bike
      expect { subject.release_bike }.to raise_error "No bikes available"
    end
  end

  it { is_expected.to respond_to(:dock).with(1).argument }


  it { is_expected.to respond_to(:bike) }
  # it "responds to bike" do
  #   instance = DockingStation.new
  #   expect(instance).to respond_to(:bike)
  it "returns docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
end
