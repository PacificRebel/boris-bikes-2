require 'bike'

describe Bike do
  it "responds to working?" do
    instance = Bike.new
    expect(instance).to respond_to (:working?)
  end

    it { is_expected.to respond_to(:report) }
end
