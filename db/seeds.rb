puts 'Cleaning up database...'
User.destroy_all
List.destroy_all
Tag.destroy_all
Item.destroy_all
Comment.destroy_all
ListTag.destroy_all

puts 'Creating 3 users...'
paul = User.create!(
  first_name: "Paul",
  last_name: "Busby",
  email: "paul.busby@gmail.com",
  password: "secret1",
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544534332/paul_avatar.jpg')
  )

carolina = User.create!(
  first_name: "Carolina",
  last_name: "Lemos",
  email: "carolina@gmail.com",
  password: "secret2",
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544534322/carolina_avatar.jpg')
  )

allenah = User.create!(
  first_name: "Allenah",
  last_name: "Herholdt",
  email: "allenah@gmail.com",
  password: "secret3",
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544534348/allenah_avatar.jpg')
  )

puts 'Creating 2 lists...'

portuguese = List.create!(
  list_type: 'restaurants',
  name: 'Portuguese restaurants in Lisbon',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544542179/portuguese_list.jpg'),
  description: 'Typical portuguese food, with a cool atmosphere, with a nice location',
  user_id: paul.id
  )

international = List.create!(
  list_type: 'restaurants',
  name: 'International cuisine',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544542480/international_list.jpg'),
  description: 'If you want to try different cuisines from all over the world, at affordable prices',
  user_id: allenah.id
  )

puts 'Creating 10 items...'

quimera = Item.create!(
  name: 'Quimera',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544540957/quimera.jpg'),
  description: 'Craft beers and comfort food set inside an ancient Roman tunnel',
  list_id: portuguese.id
  )

ramiro = Item.create!(
  name: 'Ramiro',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544541202/ramiro.jpg'),
  description: 'Relaxed, casual 3-floor seafood and beer drinking eatery established in the 1950s.',
  list_id: portuguese.id
  )

rio_maravilha = Item.create!(
  name: 'Rio Maravilha',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544541236/rio-maravilha.jpg'),
  description: 'The rooftop of an old LX Factory building is a striking setting for one of the most gorgeous views of any bar or restaurants in town.',
  list_id: portuguese.id
  )

gin_lovers = Item.create!(
  name: 'Gin Lovers',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544541291/gin%20lovers.jpg'),
  description: 'A passionate group of gin-loving entrepreneurs opened this cocktail bar dedicated to their favorite drink in an Arab-style palace',
  list_id: portuguese.id
  )

bonsai = Item.create!(
  name: 'Bonsai',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544541325/bonsai.jpg'),
  description: 'Sushi, sashimi & other Japanese dishes in a contemporary setting with traditional low tables.',
  list_id: international.id
  )

clandestino = Item.create!(
  name: 'Clandestino',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544541362/clandestino.jpg'),
  description: 'Some of the best chinese food in hipster, graffiti settings',
  list_id: international.id
  )

chutnify = Item.create!(
  name: 'Chutnify',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544541397/chutnify.jpg'),
  description: 'Stylish decor and delicious curries in one of the posher parts of town',
  list_id: international.id
  )

moules = Item.create!(
  name: 'Moules & Beer',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544541434/moules.jpg'),
  description: 'Quality beers and seafood in a bright and open environment',
  list_id: international.id
  )

brasserie = Item.create!(
  name: 'La Brasserie',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544541624/brasserie.jpg'),
  description: 'Steak & frites is the focus of this classically simple bistro, also serving vegetarian options.',
  list_id: international.id
  )

avillez = Item.create!(
  name: 'Bairro do Avillez',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544541659/avillez.jpg'),
  description: 'Another hit from José Avillez, who recently opened this restaurant complex, designed to look like a typical Portuguese neighborhood.',
  list_id: portuguese.id
  )

puts 'Creating 10 comments...'

quimera_comment = Comment.create!(
  description: 'I really liked that restaurant',
  item_id: quimera.id,
  user_id: carolina.id
  )

ramiro_comment = Comment.create!(
  description: 'I really liked that restaurant',
  item_id: ramiro.id,
  user_id: carolina.id
  )

rio_comment = Comment.create!(
  description: 'I really liked that restaurant',
  item_id: rio_maravilha.id,
  user_id: carolina.id
  )

gin_comment = Comment.create!(
  description: 'I really liked that restaurant',
  item_id: gin_lovers.id,
  user_id: carolina.id
  )

bonsai_comment = Comment.create!(
  description: 'I really liked that restaurant',
  item_id: bonsai.id,
  user_id: carolina.id
  )

clandestino_comment = Comment.create!(
  description: 'I really liked that restaurant',
  item_id: clandestino.id,
  user_id: carolina.id
  )

chutnify_comment = Comment.create!(
  description: 'I really liked that restaurant',
  item_id: chutnify.id,
  user_id: carolina.id
  )

moules_comment = Comment.create!(
  description: 'I really liked that restaurant',
  item_id: moules.id,
  user_id: carolina.id
  )

brasserie_comment = Comment.create!(
  description: 'I really liked that restaurant',
  item_id: brasserie.id,
  user_id: carolina.id
  )

avillez_comment = Comment.create!(
  description: 'I really liked that restaurant',
  item_id: avillez.id,
  user_id: carolina.id
  )

puts 'Creating 10 tags...'

foodie = Tag.create!(
  name: '#foodie'
  )

brunch = Tag.create!(
  name: '#brunch'
  )

lisbon = Tag.create!(
  name: '#lisbon'
  )

coffee = Tag.create!(
  name: '#coffee'
  )

vegan = Tag.create!(
  name: '#vegan'
  )

bakery = Tag.create!(
  name: '#bakery'
  )

puts 'Creating 10 list tags...'

foodie1 = ListTag.create!(
  list_id: portuguese.id,
  tag_id: foodie.id
  )

foodie2 = ListTag.create!(
  list_id: international.id,
  tag_id: foodie.id
  )

brunch1 = ListTag.create!(
  list_id: portuguese.id,
  tag_id: brunch.id
  )

brunch2 = ListTag.create!(
  list_id: international.id,
  tag_id: brunch.id
  )

lisbon1 = ListTag.create!(
  list_id: portuguese.id,
  tag_id: lisbon.id
  )

lisbon2 = ListTag.create!(
  list_id: international.id,
  tag_id: lisbon.id
  )

coffee1 = ListTag.create!(
  list_id: portuguese.id,
  tag_id: coffee.id
  )

coffee2 = ListTag.create!(
  list_id: international.id,
  tag_id: coffee.id
  )

vegan1 = ListTag.create!(
  list_id: portuguese.id,
  tag_id: vegan.id
  )

vegan2 = ListTag.create!(
  list_id: international.id,
  tag_id: vegan.id
  )

bakery1 = ListTag.create!(
  list_id: portuguese.id,
  tag_id: bakery.id
  )

bakery2 = ListTag.create!(
  list_id: international.id,
  tag_id: bakery.id
  )

puts 'Finished!'
