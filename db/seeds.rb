# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categorys = ['Bills', 'Rent', 'Shopping', 
        'Food', 'Subscriptions', 'Savings']

categorys.length.times do |i|
  measurement = Measurement.create!(category: categorys[i])
  10.times do |j|
    Transaction.create!(data: rand(11.2...76.9).round(2), measurement: measurement)
    puts "#{j+1} created"
  end

  puts "#{categorys[i]} created!"
end