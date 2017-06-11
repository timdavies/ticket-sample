puts 'Seeding database...'

5.times do
  order = Order.create(created_at: rand((Date.today - 2.years)..Date.today))
  puts "Created order ID #{order.id}"
end

puts 'Complete.'
