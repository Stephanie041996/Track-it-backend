require 'rails_helper'

RSpec.describe Transaction, type: :model do
  measurement = Measurement.create!(category: 'Test', icon: 'http://placehold.it/500x500')

  it 'has a data' do
    transaction = Transaction.new(data: 'whatever', measurement: measurement)
    expect(transaction).to_not be_valid

    transaction.data = 1.05
    expect(transaction).to be_valid
  end
end
