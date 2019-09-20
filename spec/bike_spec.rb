require 'bike'

describe Bike do
  it "responds to working?" do
    instance = Bike.new
    expect(instance).to respond_to(:working?)
  end

describe '#report_broken' do
    it 'reports a broken bike' do
      subject.report_broken
    expect(subject).to be_broken
    end
  end
end
