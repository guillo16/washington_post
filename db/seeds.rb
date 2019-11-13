# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'clearing database'
Article.destroy_all
Category.destroy_all
puts 'creating user'

User.create(email: "guillo@hotmail.com", password: 123456)
User.create(email: "guillo1@hotmail.com", password: 123456)
User.create(email: "guillo2@hotmail.com", password: 123456)

puts 'creating categories'

politics = Category.create(name: 'Politics')
sports = Category.create(name: 'Sports')
tech = Category.create(name: 'Tech')
world = Category.create(name: 'World')
us = Category.create(name: 'Us')
tech = Category.create(name: 'Tech')
business = Category.create(name: 'Business')
television = Category.create(name: 'Television')
travel = Category.create(name: 'Travel')

puts 'creating articles'

users = User.all.sample

20.times do
  categories = [ politics, sports, tech, world, us, travel, television, tech, business].sample
  photos = ["https://www.infobae.com/new-resizer/jVZFKTSmidMxftMBx3Bh5p8c-MA=/750x0/filters:quality(100)/arc-anglerfish-arc2-prod-infobae.s3.amazonaws.com/public/OFSBC4XLZNHAXBQ2COBY3RI5NQ.jpg",
    "https://www.infobae.com/new-resizer/3kDdimZlhzpJJOZzaiZwskSlm5E=/750x0/filters:quality(100)/arc-anglerfish-arc2-prod-infobae.s3.amazonaws.com/public/ZOWJEWYHZ5FLJEFFKPJ2NTRPCI.jpg",
    "https://www.infobae.com/new-resizer/hisEMBAxGcM1NWUadjpzo6nbld8=/750x0/filters:quality(100)/arc-anglerfish-arc2-prod-infobae.s3.amazonaws.com/public/2K7SHTG2RZFY7KG4Y2H27KBZYM.jpg",
    "https://www.infobae.com/new-resizer/g9IFbzILPB-_xTrY5Li_O7hp-_k=/750x0/filters:quality(100)/arc-anglerfish-arc2-prod-infobae.s3.amazonaws.com/public/KIS7C3ZZX5BGNNT3OQLUP54OWY.jpeg",
    "https://www.infobae.com/new-resizer/eTd0Uc3fEOZzfu4NI8I9qC1e600=/750x0/filters:quality(100)/arc-anglerfish-arc2-prod-infobae.s3.amazonaws.com/public/5WHHKTA3TVARLCISB2YAVGZTSA.jpg",
    "https://static01.nyt.com/images/2019/11/12/sports/12kaepernick1/merlin_143279871_d97edf53-bb9c-4dba-b119-3d8fbae810b0-threeByTwoMediumAt2X.jpg",
    "https://static01.nyt.com/images/2019/11/12/sports/12astros2/merlin_129577400_14cc9adb-7b53-45ca-8644-d7f58f1df5fd-threeByTwoMediumAt2X.jpg",
    "https://static01.nyt.com/images/2019/11/12/sports/12nfl-mnf/merlin_164247030_ad553da4-4b90-403d-8658-4ce6e2752a06-threeByTwoMediumAt2X.jpg",
    "https://static01.nyt.com/images/2019/11/13/business/13Techfix-illo/13Techfix-illo-threeByTwoMediumAt2X.jpg",
    "https://static01.nyt.com/images/2019/11/12/us/undefined-promo-1573597553718/undefined-promo-1573597553718-threeByTwoMediumAt2X.png",
    "https://www.infobae.com/new-resizer/_cXlQbTSsvrw8M1qdmlWFIyXhQs=/750x0/filters:quality(100)/arc-anglerfish-arc2-prod-infobae.s3.amazonaws.com/public/JCPPFLYNDBCIXNA76X3V32LOGM.jpg",
    "https://www.infobae.com/new-resizer/C1APk0aHEUkN1Ec_t4rXDrRlq74=/750x0/filters:quality(100)/arc-anglerfish-arc2-prod-infobae.s3.amazonaws.com/public/2H2OBP2WENALBIQL2JYZTIYEBE.jpg"
  ].sample

  Article.create!(title: Faker::TvShows::Seinfeld.quote,
   subtitle: Faker::TvShows::Simpsons.quote,
   photo1: photos,
   footer_1: Faker::TvShows::GameOfThrones.quote,
   photo2: photos,
   footer_2: Faker::TvShows::StrangerThings.quote,
   photo3: photos,
   photo4:'https://www.infobae.com/new-resizer/Ob06aewSWUR8fq-XDQ2rk24b0EQ=/750x0/filters:quality(100)/s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2019/06/10231337/Gustavo_Gavotti_Fotoperiodismo_2019-06-10_20.36.33.jpg',
   content_1: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem at maiores modi iste eligendi iusto, nobis, earum! Provident excepturi optio libero, eligendi voluptates explicabo quisquam aliquid esse eos, vel doloremque.</div><div>Ratione magnam voluptatem aperiam repellat tempore obcaecati praesentium accusantium, quaerat eius, pariatur ex dignissimos commodi fugit id possimus repellendus inventore, reprehenderit porro velit eum corporis eos omnis molestiae. Adipisci, non!</div><div>Adipisci, iure quos quo excepturi tenetur veritatis iusto cumque voluptatum, asperiores vero obcaecati magnam consectetur voluptatibus suscipit animi quis deleniti deserunt delectus dicta! Dolorem id tempora qui, quae, minus quas? ",
   content_2: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem at maiores modi iste eligendi iusto, nobis, earum! Provident excepturi optio libero, eligendi voluptates explicabo quisquam aliquid esse eos, vel doloremque.</div><div>Ratione magnam voluptatem aperiam repellat tempore obcaecati praesentium accusantium, quaerat eius, pariatur ex dignissimos commodi fugit id possimus repellendus inventore, reprehenderit porro velit eum corporis eos omnis molestiae. Adipisci, non!</div><div>Adipisci, iure quos quo excepturi tenetur veritatis iusto cumque voluptatum, asperiores vero obcaecati magnam consectetur voluptatibus suscipit animi quis deleniti deserunt delectus dicta! Dolorem id tempora qui, quae, minus quas?",
   content_3: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem at maiores modi iste eligendi iusto, nobis, earum! Provident excepturi optio libero, eligendi voluptates explicabo quisquam aliquid esse eos, vel doloremque.</div><div>Ratione magnam voluptatem aperiam repellat tempore obcaecati praesentium accusantium, quaerat eius, pariatur ex dignissimos commodi fugit id possimus repellendus inventore, reprehenderit porro velit eum corporis eos omnis molestiae. Adipisci, non!</div><div>Adipisci, iure quos quo excepturi tenetur veritatis iusto cumque voluptatum, asperiores vero obcaecati magnam consectetur voluptatibus suscipit animi quis deleniti deserunt delectus dicta! Dolorem id tempora qui, quae, minus quas?",
   category: categories,
   user: users)
end


puts 'finishing'































