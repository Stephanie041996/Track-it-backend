# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categorys = ['Bills', 'Rent', 'Shopping', 
        'Food', 'Subscriptions', 'Savings']

icons = ['https://i.ibb.co/4V93ZtW/noun-finance-371874-removebg-preview.png',
'https://i.ibb.co/GxR5NDg/noun-rent-2852257-removebg-preview-2.png',
'https://i.ibb.co/1dNJW1z/noun-Shop-4273649-removebg-preview.png',
'https://i.ibb.co/xqyLTWY/noun-Food-3480355-removebg-preview.png',
'https://i.ibb.co/sWMXHw7/noun-subscription-4041618-removebg-preview-2.png',
'https://i.ibb.co/RH2hc3L/noun-savings-3850438-removebg-preview.png'
]       

categorys.length.times do |i|
  measurement = Measurement.create!(category: categorys[i], icon: icons[i])
  10.times do |j|
    Transaction.create!(data: rand(11.2...76.9).round(2), measurement: measurement)
    puts "#{j+1} created"
  end

  puts "#{categorys[i]} created!"
end