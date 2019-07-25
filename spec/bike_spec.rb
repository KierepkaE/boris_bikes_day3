require "bike"

describe Bike do

  it 'is working' do
    bike = Bike.new
    expect(bike).to be_working
  end

end
