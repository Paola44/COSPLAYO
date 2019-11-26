# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Costume.destroy_all
# User.destroy_all
# Reservation.destroy_all

puts 'Creating costumes...'
costume1 = Costume.new(name: "Iron man", description: "
metalic armor blood and gold", image: "", address: "10880 Malibu Point, 90265", price_per_day: "10 000$")
costume1.save!

# puts 'Creating users...'
# user1 = User.new(first_name: "", email: "", avatar_url: "")
# user1.save!

# puts 'Creating reservations...'
# reservation1 = Reservation.new(starting_date: "", ending_date: "")
# reservation1.save!

puts 'Finished!'