require 'docking_station'
require 'bike'

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


     it "does not release bike if bike is broken" do
       bike = Bike.new
       bike.report_broken
       subject.dock(bike)
       # expect(subject).to raise_error("No bikes available")
       expect { subject.not_to respond_to(:release_bike) }
     end
  end

  describe '#dock' do
    it { is_expected.to respond_to(:dock).with(1).argument }

      it "raises an error when the dock is full" do
        DEFAULT_CAPACITY.times { subject.dock(Bike.new) }
        expect { subject.dock Bike.new }.to raise_error "Docking station is full"
      end
  #   instance = DockingStation.new.dock(Bike.new)
  #
#    expect(instance).to raise_error "Docking station is full"
  end

  describe 'bike' do
    it { is_expected.to respond_to(:bikes) }
    # it "responds to bike" do
    #   instance = DockingStation.new
    #   expect(instance).to respond_to(:bike)

    it "tells you whether there are bikes at the docking station" do
      # 1. given that there's a docking station
      bike = Bike.new
      # 2. when there is at least 1 bike
      subject.dock(bike)
      # 3. then it tells us whether there is at least 1 bike:
      expect(subject.bikes).not_to be_empty
    end
    end
end
