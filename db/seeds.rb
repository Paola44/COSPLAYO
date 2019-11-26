# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroy users"
User.destroy_all if Rails.env.development?

puts "Destroy costumes"
Costume.destroy_all if Rails.env.development?


puts "Destroy réservation "
Reservation.destroy_all if Rails.env.development?



puts 'Creating users...'
user1 = User.new(first_name: "Zinedine", last_name:"Zidane", email: "zinedine.zidane@yopmail.com", avatar: "7755322402_zinedine-zidane-en-novembre-2012-a-marseille_k39skd.jpg", password: "secret")
user1.save!
user2 = User.new(first_name: "Barack", last_name:"Obama", email: "barack.obama@yopmail.com", avatar: "_93339875_obamalaughing_klrw8x.jpg", password: "secret")
user2.save!

puts 'Creating costumes...'
costume1 = Costume.new(user: user1, name:"Iron man", description: "metalic armor blood and gold", image: "itv974hlnykchstlnoyx.jpg", address: "10880 Malibu Point, 90265", price_per_day: "10 000$")
costume1.save!
costume2 = Costume.new(user: user2, name:"Spider man", description: "blue tights", image: "Spider-Man-far-from-home_tnjvvw.jpg", address: "Parker Industries Hudson River, New-York", price_per_day: "6 000$")
costume2.save!


puts 'Creating reservations...'
reservation1 = Reservation.new(user: user2, costume: costume1, starting_date: "12/03/2019", ending_date: "15/03/2019")
reservation1.save!
reservation2 = Reservation.new(user: user1, costume: costume2, starting_date: "18/03/2019", ending_date: "22/03/2019")
reservation2.save!


puts 'Finished!'


