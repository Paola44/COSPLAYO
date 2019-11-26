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
user3 = User.new(first_name: "Vladimir", last_name:"Poutine", email: "vladimir.poutine@yopmail.com", avatar: "donzzxpdvyrpcluubmpr.jpg", password: "secret")
user3.save!
user4 = User.new(first_name: "Brad", last_name:"Pitt", email: "brad.pitt@yopmail.com", avatar: "v1574779842/Brad-Pitt-dating_jshvsa.jpg", password: "secret")
user4.save!
user5 = User.new(first_name: "Will", last_name:"Smith", email: "will.smith@yopmail.com", avatar: "will-smith-choque-par-le-sexisme-de-trump_m3um9r.jpg", password: "secret")
user5.save!
user6 = User.new(first_name: "Claude", last_name:"François", email: "claude.françois@yopmail.com", avatar: "photo_1331632580_yaqvwt.jpg", password: "secret")
user6.save!
user7 = User.new(first_name: "Arthur", last_name:"Rimbaud", email: "arthur.rimbaud@yopmail.com", avatar: "_93339875_obamalaughing_klrw8x.jpg", password: "secret")
user7.save!
user8 = User.new(first_name: "Bonaparte", last_name:"Napoleon", email: "bonaparte.napoleon@yopmail.com", avatar: "ill_3451141_a9db_autopsie2_x1p1_udsaqt.jpg", password: "secret")
user8.save!

puts 'Creating costumes...'
costume1 = Costume.new(user: user1, name:"Iron man", description: "metalic armor blood and gold", image: "itv974hlnykchstlnoyx.jpg", address: "10880 Malibu Point, 90265", price_per_day: "10 000$")
costume1.save!
costume2 = Costume.new(user: user2, name:"Spider man", description: "blue tights", image: "Spider-Man-far-from-home_tnjvvw.jpg", address: "Parker Industries Hudson River, New-York", price_per_day: "6 000$")
costume2.save!
costume3 = Costume.new(user: user2, name:"batman", description: "grey tights", image: "5808e0cbcb75de5d119cedeb34175b1e_jhnqep.jpg", address: "gotam city", price_per_day: "6 000$")
costume3.save!
costume4 = Costume.new(user: user2, name:"Wolverine", description: "Yellow tights", image: "731576bc81c06188a8921910ff6cf462_x7wt6c.jpg", address: "Michigan", price_per_day: "9 000$")
costume4.save!
costume5 = Costume.new(user: user2, name:"Ninja", description: "blue tights", image: "ptui1yephniroli8hfwf.jpg", address: "japon", price_per_day: "3 000$")
costume5.save!
costume6 = Costume.new(user: user2, name:"Terminator", description: "blue tights", image: "Terminator_c2gvky.jpg", address: "Chicago", price_per_day: "6 000$")
costume6.save!
costume7 = Costume.new(user: user3, name:"Indiana Jones", description: "lasso", image: "9c8b07dad68db0b15ab2cb0f236175cc_e7i3al.jpg", address: "Jungle", price_per_day: "1 000$")
costume7.save!




puts 'Creating reservations...'
reservation1 = Reservation.new(user: user1, costume: costume5, starting_date: "12/03/2019", ending_date: "15/03/2019")
reservation1.save!
reservation2 = Reservation.new(user: user2, costume: costume6, starting_date: "18/05/2019", ending_date: "22/05/2019")
reservation2.save!
reservation3 = Reservation.new(user: user3, costume: costume2, starting_date: "18/06/2019", ending_date: "22/06/2019")
reservation3.save!
reservation4 = Reservation.new(user: user4, costume: costume1, starting_date: "18/07/2019", ending_date: "22/07/2019")
reservation4.save!
reservation5 = Reservation.new(user: user5, costume: costume3, starting_date: "18/08/2019", ending_date: "22/08/2019")
reservation5.save!



puts 'Finished!'


