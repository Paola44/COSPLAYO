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
costume1 = Costume.new(user: user1, name:"Iron man", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Natus asperiores, officiis. Hic numquam eum officia veniam nisi sint harum aliquam dolores. Excepturi, cum. Natus, cum quibusdam nesciunt alias necessitatibus libero?", address: "10880 Malibu Point, 90265", price_per_day: "100$")
costume1.remote_image_url = "https://upload.wikimedia.org/wikipedia/en/thumb/e/e0/Iron_Man_bleeding_edge.jpg/250px-Iron_Man_bleeding_edge.jpg"
costume1.save!
costume2 = Costume.new(user: user2, name:"Spider man", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae maxime dolores totam. Accusamus repudiandae delectus quis voluptate sed, deleniti doloribus neque dicta in perspiciatis ullam commodi ab eveniet dolore enim.", address: "99 Av. des Champs-Élysées, 75008 Paris", price_per_day: "600$")
costume2.remote_image_url = "http://image.jeuxvideo.com/medias-md/156208/1562078749-858-card.jpg"
costume2.save!
costume3 = Costume.new(user: user2, name:"batman", description: "Lorem ipsum dolor sit", address: "1600 Pennsylvania Ave NW, Washington, DC 20500, États-Unis", price_per_day: "600$")
costume3.remote_image_url = "https://www.sideshow.com/storage/product-images/903127/batman_dc-comics_feature.jpg"
costume3.save!
costume4 = Costume.new(user: user2, name:"Wolverine", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum recusandae iure distinctio sapiente quam voluptates. Nulla dolorum nemo sit possimus ea optio, voluptates adipisci pariatur velit voluptatem quibusdam doloribus, rem.", address: "55 Rue du Faubourg Saint-Honoré, 75008 Paris", price_per_day: "900$")
costume4.remote_image_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUhBrm8GljKO1ErBiApkadATgrWVd-jpCs_WcisacsUGpvZxP8dQ&s"
costume4.save!
costume5 = Costume.new(user: user2, name:"Mystic", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat quo, aspernatur? Illum, maiores pariatur omnis, veritatis voluptates ipsa earum, deleniti tempora minima qui voluptatum ullam. Dolorum quos quam fugit quis.", address: "japon", price_per_day: "300$")
costume5.remote_image_url = "http://www.geek-world.fr/Files/123187/Img/05/Marvel-Comics-statuette-Premium-Format-Mystique-Sideshow-5-zoom.jpg"
costume5.save!
costume6 = Costume.new(user: user2, name:"Batwoman", description: "	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Optio veritatis atque nulla magnam maxime perferendis voluptates iusto provident sequi perspiciatis at, voluptatum tempora vitae explicabo quae in dolorum ullam obcaecati!", address: "2 Rue Laennec, 44000 Nantes", price_per_day: "600$")
costume6.remote_image_url = "https://topcomics.fr/wp-content/uploads/2019/09/classement-des-20-superheroines-dc-comics-les-plus-sexy-batwoman-kate-kane.jpg"
costume6.save!
costume7 = Costume.new(user: user3, name:"Mera", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi commodi provident, natus aliquam impedit eum sint nesciunt obcaecati fugit vel eos, maiores ea dolore. Magnam unde ab, quibusdam pariatur atque!", address: " 14 Rue de la Baclerie, 44000 Nantes", price_per_day: "100$")
costume7.remote_image_url = "https://topcomics.fr/wp-content/uploads/2019/09/classement-des-20-superheroines-dc-comics-les-plus-sexy-mera.jpg"
costume7.save!
costume8 = Costume.new(user: user3, name:"Captain Marvel", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi commodi provident, natus aliquam impedit eum sint nesciunt obcaecati fugit vel eos, maiores ea dolore. Magnam unde ab, quibusdam pariatur atque!", address: " 14 Rue de la Baclerie, 44000 Nantes", price_per_day: "100$")
costume8.remote_image_url = "https://topcomics.fr/wp-content/uploads/2019/02/15-superheroines-les-plus-fortes-des-comics-captain-marvel-carol-danvers.jpg"
costume8.save!
costume9 = Costume.new(user: user3, name:"Green Lantern", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi commodi provident, natus aliquam impedit eum sint nesciunt obcaecati fugit vel eos, maiores ea dolore. Magnam unde ab, quibusdam pariatur atque!", address: " 14 Rue de la Baclerie, 44000 Nantes", price_per_day: "100$")
costume9.remote_image_url = "https://themightyblog.fr/wp-content/uploads/2019/11/Far-Sector-001-review.jpg"
costume9.save!
costume10 = Costume.new(user: user3, name:"Dardevil", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi commodi provident, natus aliquam impedit eum sint nesciunt obcaecati fugit vel eos, maiores ea dolore. Magnam unde ab, quibusdam pariatur atque!", address: " 14 Rue de la Baclerie, 44000 Nantes", price_per_day: "100$")
costume10.remote_image_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShat4W6U-KKtAxicPKxyshnvQmKPtw-qUawflsGSb4rpvgH5vm&s"
costume10.save!
costume11 = Costume.new(user: user3, name:"Superman", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi commodi provident, natus aliquam impedit eum sint nesciunt obcaecati fugit vel eos, maiores ea dolore. Magnam unde ab, quibusdam pariatur atque!", address: " 14 Rue de la Baclerie, 44000 Nantes", price_per_day: "100$")
costume11.remote_image_url = "https://img.filmsactu.net/datas/films/j/u/justice-league/xl/justice-league-5afad181368e7.jpg"
costume11.save!
costume12 = Costume.new(user: user3, name:"Hulk", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi commodi provident, natus aliquam impedit eum sint nesciunt obcaecati fugit vel eos, maiores ea dolore. Magnam unde ab, quibusdam pariatur atque!", address: " 14 Rue de la Baclerie, 44000 Nantes", price_per_day: "100$")
costume12.remote_image_url = "http://fr.web.img5.acsta.net/videothumbnails/18/02/26/11/55/4958766.jpg"
costume12.save!
costume13 = Costume.new(user: user3, name:"Catwoman", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi commodi provident, natus aliquam impedit eum sint nesciunt obcaecati fugit vel eos, maiores ea dolore. Magnam unde ab, quibusdam pariatur atque!", address: " 14 Rue de la Baclerie, 44000 Nantes", price_per_day: "100$")
costume13.remote_image_url = "http://fr.web.img4.acsta.net/videothumbnails/183/664/18366460_20130726143559395.jpg"
costume13.save!



puts 'Creating reservations...'
reservation1 = Reservation.new(user: user2, costume: costume1, starting_date: "12/03/2019", ending_date: "15/03/2019")
reservation1.save!
reservation2 = Reservation.new(user: user1, costume: costume2, starting_date: "18/03/2019", ending_date: "22/03/2019")
reservation2.save!
reservation3 = Reservation.new(user: user3, costume: costume2, starting_date: "18/06/2019", ending_date: "22/06/2019")
reservation3.save!
reservation4 = Reservation.new(user: user4, costume: costume1, starting_date: "18/07/2019", ending_date: "22/07/2019")
reservation4.save!
reservation5 = Reservation.new(user: user5, costume: costume3, starting_date: "18/08/2019", ending_date: "22/08/2019")
reservation5.save!

puts 'Finished!'


