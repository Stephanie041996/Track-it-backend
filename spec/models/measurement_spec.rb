require 'rails_helper'

RSpec.describe Measurement, type: :model do
  it 'has a category' do
    measurement = Measurement.new(category: 'Test', icon: 'http://placehold.it/500x500')
    expect(measurement).to_not be_valid

    measurement.category = 'Test'
    expect(measurement).to be_valid
  end

  it 'has has an icon' do
    measurement = Measurement.new(category: 'Test', icon: '')
    expect(measurement).to_not be_valid

    measurement.icon = 'http://placehold.it/500x500'
    expect(measurement).to be_valid
  end

  it 'has a category between 3 and 24 characters' do
    measurement = Measurement.new(category: 'Te', icon: 'http://placehold.it/500x500')
    expect(measurement).to_not be_valid

    measurement.category = 'Test'
    expect(measurement).to be_valid
  end
end