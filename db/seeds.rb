puts 'Cleaning up database...'
User.destroy_all
List.destroy_all
Tag.destroy_all
Item.destroy_all
Comment.destroy_all
ListTag.destroy_all
Like.destroy_all
Follow.destroy_all
Bookmark.destroy_all

puts 'Creating 3 users...'
paul = User.create!(
  first_name: "Guest",
  last_name: "User",
  email: "guest@gmail.com",
  password: "recoguest",
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1546533953/avatar-1577909__340.png')
  )

carolina = User.create!(
  first_name: "Carolina",
  last_name: "Lemos",
  email: "carolina@gmail.com",
  password: "secret2",
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544534322/carolina_avatar.jpg')
  )

allenah = User.create!(
  first_name: "Allenah",
  last_name: "Herholdt",
  email: "allenah@gmail.com",
  password: "secret3",
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544534348/allenah_avatar.jpg')
  )

puts 'Creating 2 paul lists...'

portuguese = List.create!(
  list_type: 'restaurants',
  name: 'Portuguese restaurants in Lisbon',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544542179/portuguese_list.jpg'),
  description: 'Typical portuguese food, with a cool atmosphere, with a nice location',
  user_id: paul.id
  )

international = List.create!(
  list_type: 'restaurants',
  name: 'International cuisine',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544542480/international_list.jpg'),
  description: 'If you want to try different cuisines from all over the world, at affordable prices',
  user_id: paul.id
  )

puts 'Creating 10 paul items...'

quimera = Item.create!(
  name: 'Quimera',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544540957/quimera.jpg'),
  description: 'Craft beers and comfort food set inside an ancient Roman tunnel',
  list_id: portuguese.id
  )

ramiro = Item.create!(
  name: 'Ramiro',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544541202/ramiro.jpg'),
  description: 'Relaxed, casual 3-floor seafood and beer drinking eatery established in the 1950s.',
  list_id: portuguese.id
  )

rio_maravilha = Item.create!(
  name: 'Rio Maravilha',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544541236/rio-maravilha.jpg'),
  description: 'The rooftop of an old LX Factory building is a striking setting for one of the most gorgeous views of any bar or restaurants in town.',
  list_id: portuguese.id
  )

gin_lovers = Item.create!(
  name: 'Gin Lovers',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544541291/gin%20lovers.jpg'),
  description: 'A passionate group of gin-loving entrepreneurs ed this cocktail bar dedicated to their favorite drink in an Arab-style palace',
  list_id: portuguese.id
  )

bonsai = Item.create!(
  name: 'Bonsai',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544541325/bonsai.jpg'),
  description: 'Sushi, sashimi & other Japanese dishes in a contemporary setting with traditional low tables.',
  list_id: international.id
  )

clandestino = Item.create!(
  name: 'Clandestino',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544541362/clandestino.jpg'),
  description: 'Some of the best chinese food in hipster, graffiti settings',
  list_id: international.id
  )

chutnify = Item.create!(
  name: 'Chutnify',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544541397/chutnify.jpg'),
  description: 'Stylish decor and delicious curries in one of the posher parts of town',
  list_id: international.id
  )

moules = Item.create!(
  name: 'Moules & Beer',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544541434/moules.jpg'),
  description: 'Quality beers and seafood in a bright and  environment',
  list_id: international.id
  )

brasserie = Item.create!(
  name: 'La Brasserie',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544541624/brasserie.jpg'),
  description: 'Steak & frites is the focus of this classically simple bistro, also serving vegetarian options.',
  list_id: international.id
  )

avillez = Item.create!(
  name: 'Bairro do Avillez',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544541659/avillez.jpg'),
  description: 'Another hit from José Avillez, who recently ed this restaurant complex, designed to look like a typical Portuguese neighborhood.',
  list_id: portuguese.id
  )

puts 'Creating 10 paul comments...'

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

puts 'Creating 10 restaurants tags...'

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

healthy = Tag.create!(
  name: '#healthy'
  )

tasty = Tag.create!(
  name: '#tasty'
  )

italian = Tag.create!(
  name: '#italian'
  )

pizza = Tag.create!(
  name: '#pizza'
  )

puts 'Creating 4 paul list tags...'

foodie1 = ListTag.create!(
  list_id: portuguese.id,
  tag_id: foodie.id
  )

foodie2 = ListTag.create!(
  list_id: international.id,
  tag_id: foodie.id
  )

lisbon1 = ListTag.create!(
  list_id: portuguese.id,
  tag_id: lisbon.id
  )

lisbon2 = ListTag.create!(
  list_id: international.id,
  tag_id: lisbon.id
  )

puts 'Finished Paul lists!'

puts 'Creating 2 allenah, 1 carolina restaurants lists...'

brunch_restaurants = List.create!(
  list_type: 'restaurants',
  name: 'Brunch spots in Lisbon',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544694252/brunch.jpg'),
  description: 'The best brunch places to go with friends during the weekend, with great food. And they will all look awesome on your instagram!',
  user_id: allenah.id
  )

vegan_restaurants = List.create!(
  list_type: 'restaurants',
  name: 'Restaurants for veggie lovers',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544694290/vegan.jpg'),
  description: 'Vegetarian restaurants with quality products and tasty dishes. Veggie food can be really tasty!',
  user_id: allenah.id
  )

italian_restaurants = List.create!(
  list_type: 'restaurants',
  name: 'The best Italian cuisine',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544694323/italian.jpg'),
  description: 'When you’re craving for crusty pizzas, for freshly made pasta, or for a break from the Portuguese traditional food, these are the best Italian restaurants in Lisbon.',
  user_id: carolina.id
  )

puts 'Creating 7 restaurants items...'

zenith = Item.create!(
  name: 'Zenith',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544694354/zenith.jpg'),
  description: 'The food is delicious, especially the pancakes and the sweet potato toast with avocado. And the brunch menu is available every day.',
  list_id: brunch_restaurants.id
  )

amelia  = Item.create!(
  name: 'Amelia',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544694389/amelia.png'),
  description: 'Tasty and healthy food, in a really cool location! I recommend the waffles and the acai bowl.',
  list_id: brunch_restaurants.id
  )

heim  = Item.create!(
  name: 'Heim cafe',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544694421/heim.jpg'),
  description: 'The place has become so popular that weekend lines are unavoidable. Don’t give up, because all three of their brunch options are delicious.',
  list_id: brunch_restaurants.id
  )

boulangerie  = Item.create!(
  name: 'Boulangerie',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544694462/boulangerie.jpg'),
  description: 'The brunch menu offers some of the best freshly baked croissants I have ever tasted. You have to try it!',
  list_id: brunch_restaurants.id
  )

topo  = Item.create!(
  name: 'Topo',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544694494/topo.jpg'),
  description: 'If you want to enjoy a tasty brunch with a great view, this is the place to go to!',
  list_id: brunch_restaurants.id
  )

psi = Item.create!(
  name: 'Psi Vegetariano',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544694523/psi.jpg'),
  description: 'Wide-ranging array of veggie dishes in a relaxed restaurant with a lakeside terrace in lush gardens.',
  list_id: vegan_restaurants.id
  )

mercantina = Item.create!(
  name: 'Mercantina',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544694552/mercantina.jpg'),
  description: 'It brings to the table the Neapolitan tradition – fluffier dough, thick on the edges, damp in the middle. A pizzeria with a super-deluxe oven custom-made in Napoli.',
  list_id: italian_restaurants.id
  )

puts 'Creating 7 restaurants comments...'

zenith_comment = Comment.create!(
  description: 'I tried the pancakes and I loved it! Thanks for the tip!',
  item_id: zenith.id,
  user_id: carolina.id
  )

amelia_comment = Comment.create!(
  description: 'I agree, the place is really nice and the food is delicious! I will definitely go back',
  item_id: amelia.id,
  user_id: carolina.id
  )

heim_comment = Comment.create!(
  description: 'I went during the weekend and it was indeed very busy but worth the wait!',
  item_id: heim.id,
  user_id: carolina.id
  )

boulangerie_comment = Comment.create!(
  description: 'The brunch menu is great! And you definitely need to try the croissants!',
  item_id: boulangerie.id,
  user_id: carolina.id
  )

topo_comment = Comment.create!(
  description: 'Great spot! Perfect to enjoy sunny Lisbon!',
  item_id: topo.id,
  user_id: carolina.id
  )

psi_comment = Comment.create!(
  description: 'One of the best vegetarian restaurants I have been to in Lisbon',
  item_id: psi.id,
  user_id: carolina.id
  )

mercantina_comment = Comment.create!(
  description: 'Freshly made pasta is the best, and this one is delicious!',
  item_id: mercantina.id,
  user_id: paul.id
  )

puts 'Creating 14 restaurants list tags...'

brunch1 = ListTag.create!(
  list_id: brunch_restaurants.id,
  tag_id: brunch.id
  )

coffee1 = ListTag.create!(
  list_id: brunch_restaurants.id,
  tag_id: coffee.id
  )

foodie3 = ListTag.create!(
  list_id: brunch_restaurants.id,
  tag_id: foodie.id
  )

tasty1 =  ListTag.create!(
  list_id: brunch_restaurants.id,
  tag_id: tasty.id
  )

bakery1 = ListTag.create!(
  list_id: brunch_restaurants.id,
  tag_id: bakery.id
  )

lisbon3 = ListTag.create!(
  list_id: brunch_restaurants.id,
  tag_id: lisbon.id
  )

healthy1 = ListTag.create!(
  list_id: vegan_restaurants.id,
  tag_id: healthy.id
  )

vegan1 = ListTag.create!(
  list_id: vegan_restaurants.id,
  tag_id: vegan.id
  )

lisbon4 = ListTag.create!(
  list_id: vegan_restaurants.id,
  tag_id: lisbon.id
  )

foodie4 = ListTag.create!(
  list_id: vegan_restaurants.id,
  tag_id: foodie.id
  )

italian1 = ListTag.create!(
  list_id: italian_restaurants.id,
  tag_id: italian.id
  )

pizza1 = ListTag.create!(
  list_id: italian_restaurants.id,
  tag_id: pizza.id
  )

foodie5 = ListTag.create!(
  list_id: italian_restaurants.id,
  tag_id: foodie.id
  )

tasty2 =  ListTag.create!(
  list_id: italian_restaurants.id,
  tag_id: tasty.id
  )

puts 'Finished 2 allenah, 1 carolina restaurants lists!'

puts 'Creating 3 allenah movies lists...'

thriller_movies = List.create!(
  list_type: 'movies',
  name: 'Best Thrillers Ever',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544695763/thriller.jpg'),
  description: 'This list contains the best thriller movies of all time. A thrilling list to get the adrenaline flowing!',
  user_id: allenah.id
  )

comedy_movies = List.create!(
  list_type: 'movies',
  name: 'Just a few of my Favourite Comedies',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544695787/comedy.jpg'),
  description: 'In this list I focus on the comedy part of my favourite movies, because I love to laugh . . . ok giggle!',
  user_id: allenah.id
  )

christmas_movies = List.create!(
  list_type: 'movies',
  name: 'Favourite Christmas Classics',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544695808/christmas.jpg'),
  description: 'This list contains the best christmas movies of all time!',
  user_id: allenah.id
  )

puts 'Creating 9 allenah movies items...'

silence = Item.create!(
  name: 'The Silence of the Lambs',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544695763/thriller.jpg'),
  description: 'The plot is simply genius. Jodie Foster gives a stellar performance as the trainee agent and Anthony Hopkins is  beyond excellence and comparison  in his portrayal of Hannibal Lecter. Do not miss it!',
  list_id: thriller_movies.id
  )

seven = Item.create!(
  name: 'Seven',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544695899/seven.jpg'),
  description: 'Even though the ending of the movie is quite predictable, the storyline is so gripping that you get yourself into the movie till the end.Great acting by Brad Pitt,Kevin Spacey and Morgan Freeman.',
  list_id: thriller_movies.id
  )

dodgeball = Item.create!(
  name: 'Dodgeball',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544695924/dodgeball.jpg'),
  description: 'If you can dodge a wrench, you can dodge a ball. If you are looking for 92 minutes of mindless fun and countless quotable moments...this has everything you are looking for.',
  list_id: comedy_movies.id
  )

anger = Item.create!(
  name: 'Anger Management',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544695951/anger.jpg'),
  description: 'I thought the movie was hilarious if I am honest..I do believe you need to have a wacky sense of humour to laugh at the script etc but I just found that Sandler actually played the part very well and his co stars in the anger management group were excellent.',
  list_id: comedy_movies.id
  )

home_alone = Item.create!(
  name: 'Home Alone',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544695990/homealone.jpg'),
  description: 'I love this movie and it is one of my favourites around the holidays. It is a holiday classic that everyone should watch and enjoy.',
  list_id: christmas_movies.id
  )

miracle = Item.create!(
  name: 'Miracle on 34th Street',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544696020/miracle.jpg'),
  description: 'If you are after an entirely pleasant, inoffensive, feel-good movie at Christmas, this is it: the kind of innocent, utterly charming, hanky-ringing fare that they are not supposed to be making any more.',
  list_id: christmas_movies.id
  )

love_actually = Item.create!(
  name: 'Love Actually',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544696048/loveactually.jpg'),
  description: '"Love actually" may not be true but the happiness in it is truly grandiose, after all is not happiness the only true purpose of life. Merry Christmas and a happy new year.. 🍻 cheers..!!',
  list_id: christmas_movies.id
  )

holiday = Item.create!(
  name: 'The Holiday',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544696086/holiday.jpg'),
  description: 'Perfect dreamy Christmas holiday movie…. A beautiful portrayal of unexpected relationships and amazing performances makes this movie worth a watch. You should definitely go on this holiday!',
  list_id: christmas_movies.id
  )

grinch = Item.create!(
  name: 'The Grinch',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544696116/grinch.jpg'),
  description: 'This movie expands the story of "How The Grinch Stole Christmas" with a backstory and a good understanding of what is happening down in Who-Ville. Jim Carrey plays the role as Grinch perfectly and makes the movie seem whole. Your heart will grow three sizes.',
  list_id: christmas_movies.id
  )

puts 'Creating 9 allenah movies comments...'

silence_comment = Comment.create!(
 description: 'As Lecter, Anthony Hopkins gives an astounding performance, eery, menacing, creepy, believable.',
 item_id: silence.id,
 user_id: carolina.id
 )

seven_comment = Comment.create!(
 description: 'If you think you know where the story is going, think again. This movie has an unconventional ending worthy of the anti-hero movies of the Seventies.',
 item_id: seven.id,
 user_id: carolina.id
 )

dodgeball_comment = Comment.create!(
 description: 'A pretty hilarious movie thanks to Stillers willingness to let himself look like a complete idiot just for laughs.',
 item_id: dodgeball.id,
 user_id: carolina.id
 )

anger_comment = Comment.create!(
 description: 'I love it...it is the best Sandler has ever been...and Jack is great as usual.',
 item_id: anger.id,
 user_id: carolina.id
 )

home_alone_comment = Comment.create!(
 description: 'Love it, watched it a zillion times!',
 item_id: home_alone.id,
 user_id: carolina.id
 )

miracle_comment = Comment.create!(
 description: 'Absolute classic, must watch every year around Christmas!',
 item_id: miracle.id,
 user_id: carolina.id
 )

love_actually_comment = Comment.create!(
 description: 'Awesome... Different stories, which are interconnected...I love love actually!',
 item_id: love_actually.id,
 user_id: carolina.id
 )

holiday_comment = Comment.create!(
 description: 'I just love this movie..both the ladies were rocking..and I am a huge fan of Jude law!',
 item_id: holiday.id,
 user_id: carolina.id
 )

grinch_comment = Comment.create!(
 description: 'Very funny and entertaining. Jim Carrey, as always, hilarious acting, very dramatic!',
 item_id: grinch.id,
 user_id: carolina.id
 )

puts "Creating 12 movies tags..."

thriller = Tag.create!(
  name: '#thriller'
  )

christmas = Tag.create!(
  name: '#christmas'
  )

comedy = Tag.create!(
  name: '#comedy'
  )

action = Tag.create!(
  name: '#action'
  )

classic = Tag.create!(
 name: '#classic'
)

loveisallaround = Tag.create!(
 name: '#loveisallaround'
 )

romantic = Tag.create!(
 name: '#romantic'
 )

loveactually = Tag.create!(
 name: '#loveactually'
 )

thegrinch = Tag.create!(
 name: '#thegrinch'
)

angermanagement = Tag.create!(
 name: '#angermanagement'
)

dodgeball = Tag.create!(
 name: '#dodgeball'
)

scary = Tag.create!(
 name: '#scary'
)

puts 'Creating 10 allenah movies lists tags...'

loveisallaround1 = ListTag.create!(
  list_id: christmas_movies.id,
  tag_id: loveisallaround.id
  )

romantic1 = ListTag.create!(
  list_id: christmas_movies.id,
  tag_id: romantic.id
  )

loveactually1 = ListTag.create!(
  list_id: christmas_movies.id,
  tag_id: loveactually.id
  )

thegrinch1 = ListTag.create!(
  list_id: christmas_movies.id,
  tag_id: thegrinch.id
  )

angermanagement1 = ListTag.create!(
  list_id: comedy_movies.id,
  tag_id: angermanagement.id
  )

dodgeball1 = ListTag.create!(
  list_id: comedy_movies.id,
  tag_id: dodgeball.id
  )

comedy1 = ListTag.create!(
  list_id: comedy_movies.id,
  tag_id: comedy.id
  )

scary1 = ListTag.create!(
  list_id: thriller_movies.id,
  tag_id: scary.id
  )

thriller1 = ListTag.create!(
  list_id: thriller_movies.id,
  tag_id: thriller.id
  )

action1 = ListTag.create!(
  list_id: thriller_movies.id,
  tag_id: action.id
  )

puts 'Finished allenah movies lists!'

puts 'Adding friendships...'

friendship1 = Friendship.create!(
  user_id: paul.id,
  friend_id: allenah.id
  )

friendship2 = Friendship.create!(
  user_id: paul.id,
  friend_id: carolina.id
  )

friendship3 = Friendship.create!(
  user_id: allenah.id,
  friend_id: carolina.id
  )

puts 'Finished adding friendships!'

puts 'Creating 12 users...'

pedro = User.create!(
  first_name: "Pedro",
  last_name: "Nogueira",
  email: "pedro@gmail.com",
  password: "secret",
  remote_photo_url:'https://res.cloudinary.com/dtb2b6cpx/image/upload/v1545389499/vshknq7igz6riezeeo4n.jpg'
  )

carlotta = User.create!(
  first_name: "Carlotta",
  last_name: "Schaffner",
  email: "carlotta@gmail.com",
  password: "secret",
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544959938/carlotta.jpg')
  )

chris = User.create!(
  first_name: "Chris",
  last_name: "Sisserian",
  email: "chris@gmail.com",
  password: "secret",
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544960936/chris.jpg')
  )

clelia = User.create!(
  first_name: "Clélia",
  last_name: "Sapriel",
  email: "clelia@gmail.com",
  password: "secret",
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544960660/clelia.jpg')
  )

ines = User.create!(
  first_name: "Ines",
  last_name: "Salgueiro",
  email: "ines@gmail.com",
  password: "secret",
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544960752/ines.jpg')
  )

jami = User.create!(
  first_name: "Jami",
  last_name: "Owen",
  email: "jami@gmail.com",
  password: "secret",
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544960018/jami.jpg')
  )

manuel = User.create!(
  first_name: "Manuel",
  last_name: "Sousa",
  email: "manuel@gmail.com",
  password: "secret",
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544960097/manuel.jpg')
  )

mathilde = User.create!(
  first_name: "Mathilde",
  last_name: "Bergue",
  email: "mathilde@gmail.com",
  password: "secret",
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544960179/mathilde.jpg')
  )

nick = User.create!(
  first_name: "Nick",
  last_name: "Petzold",
  email: "nick@gmail.com",
  password: "secret",
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544960274/nick.jpg')
  )

ruben = User.create!(
  first_name: "Ruben",
  last_name: "Dias",
  email: "ruben@gmail.com",
  password: "secret",
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544960453/ruben.jpg')
  )

rui = User.create!(
  first_name: "Rui",
  last_name: "Freitas",
  email: "rui@gmail.com",
  password: "secret",
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1545389622/nhj1vjezuu8ztul8yopm.jpg')
  )

thomas = User.create!(
  first_name: "Thomas",
  last_name: "Singell",
  email: "thomas@gmail.com",
  password: "secret",
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544960499/thomas.jpg')
  )

vasco = User.create!(
  first_name: "Vasco",
  last_name: "Figueiredo",
  email: "vasco@gmail.com",
  password: "secret",
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544960579/vasco.jpg')
  )

puts 'Creating 12 friendships...'

friendship4 = Friendship.create!(
  user_id: paul.id,
  friend_id: pedro.id
  )

friendship5 = Friendship.create!(
  user_id: paul.id,
  friend_id: carlotta.id
  )

friendship6 = Friendship.create!(
  user_id: paul.id,
  friend_id: chris.id
  )

friendship7 = Friendship.create!(
  user_id: paul.id,
  friend_id: clelia.id
  )

friendship8 = Friendship.create!(
  user_id: paul.id,
  friend_id: ines.id
  )

friendship9 = Friendship.create!(
  user_id: paul.id,
  friend_id: jami.id
  )

friendship10 = Friendship.create!(
  user_id: paul.id,
  friend_id: manuel.id
  )

friendship11 = Friendship.create!(
  user_id: paul.id,
  friend_id: mathilde.id
  )

friendship12 = Friendship.create!(
  user_id: paul.id,
  friend_id: nick.id
  )

friendship13 = Friendship.create!(
  user_id: paul.id,
  friend_id: ruben.id
  )

friendship14 = Friendship.create!(
  user_id: paul.id,
  friend_id: thomas.id
  )

friendship15 = Friendship.create!(
  user_id: paul.id,
  friend_id: vasco.id
  )

friendship16 = Friendship.create!(
  user_id: paul.id,
  friend_id: rui.id
  )

puts 'Creating 2 paul movies lists...'

pixar_movies = List.create!(
  list_type: 'movies',
  name: 'Best Animation movies',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1545325649/up.jpg'),
  description: 'These are my favorite animation movies of all times.',
  user_id: paul.id
  )

action_movies = List.create!(
  list_type: 'movies',
  name: 'Action movies',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544970268/action.jpg'),
  description: 'There are so many great action films it is hard to name them all, but for me these are pretty hard to beat',
  user_id: paul.id
  )

puts 'Creating 6 paul movies items...'

toy_story = Item.create!(
  name: 'Toy Story',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544970405/toystory.jpg'),
  description: 'It’s a landmark movie, and doesn’t get old with frequent repetition. Definitely one of my favourite movies!',
  list_id: pixar_movies.id
  )

nemo = Item.create!(
  name: 'Finding Nemo',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544970667/nemo.jpg'),
  description: 'Pixar took things back to basics for 2003’s Finding Nemo, following the adventures of a single father and his brain-damaged acquaintance as they desperately search for his kidnapped son.',
  list_id: pixar_movies.id
  )

incredibles = Item.create!(
  name: 'The Incredibles',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544971245/incredibles.jpg'),
  description: 'Bringing tons of fun to the animated superhero genre, The Incredibles easily lives up to its name.',
  list_id: pixar_movies.id
  )

die_hard = Item.create!(
  name: 'Die Hard',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544971937/diehard.jpg'),
  description: 'It´s many imitators (and sequels) have never come close to matching the taut thrills of the definitive holiday action classic.',
  list_id: action_movies.id
  )

matrix = Item.create!(
  name: 'The Matrix',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544972082/matrix.jpg'),
  description: 'The Matrix is a smartly crafted combination of spectacular action and groundbreaking special effects.',
  list_id: action_movies.id
  )

casino = Item.create!(
  name: 'Casino Royale',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544972573/casino.jpg'),
  description: 'This great movie with Daniel Craig is a caustic, haunted, intense reinvention of 007.',
  list_id: action_movies.id
  )

puts 'Creating 6 movies tags...'

pixar = Tag.create!(
  name: '#pixar'
  )

animation = Tag.create!(
  name: '#animation'
  )

findingnemo = Tag.create!(
  name: '#findingnemo'
  )

theincredibles = Tag.create!(
  name: '#theincredibles'
  )

adventure = Tag.create!(
  name: '#adventure'
  )

suspense = Tag.create!(
  name: '#suspense'
  )

puts 'Creating 7 paul movies lists tags...'

pixar1 = ListTag.create!(
  list_id: pixar_movies.id,
  tag_id: pixar.id
  )

animation1 = ListTag.create!(
  list_id: pixar_movies.id,
  tag_id: animation.id
  )

findingnemo1 = ListTag.create!(
  list_id: pixar_movies.id,
  tag_id: findingnemo.id
  )

theincredibles1 = ListTag.create!(
  list_id: pixar_movies.id,
  tag_id: theincredibles.id
  )


action2 = ListTag.create!(
  list_id: action_movies.id,
  tag_id: action.id
  )

adventure1 = ListTag.create!(
  list_id: action_movies.id,
  tag_id: adventure.id
  )

suspense1 = ListTag.create!(
  list_id: action_movies.id,
  tag_id: suspense.id
  )

puts 'Creating 2 albums lists...'

reggae_albums = List.create!(
  list_type: 'albums',
  name: '5 Albums That Changed Reggae History',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544975922/reggae.jpg'),
  description: 'These albums paved the way for modern day reggae. These ska pioneers are from the early 60s and 70s. If you are interested in learning more about reggae, this is the perfect place to start!',
  user_id: allenah.id
  )

jazz_albums = List.create!(
  list_type: 'albums',
  name: 'Best Jazz Pianists of All Time',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544977282/jazz.jpg'),
  description: 'Strings or percussion? How about the best of both worlds? The piano is one of the coolest instruments out there, and these jazz artists have learned how to master their craft. Take a listen!',
  user_id: paul.id
  )

puts 'Creating 10 albums lists items...'

funky_kingston = Item.create!(
  name: 'Funky Kingston',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544976114/funkykingston.png'),
  description: 'It ramps the soul side of Toots And The Maytals sound for one of the most uplifting albums of all time.',
  list_id: reggae_albums.id
  )

suzanne = Item.create!(
  name: 'Suzanne Beware of the Devil',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544976210/suzanne.png'),
  description: 'This is an awesome album of Dandy Livingstone!',
  list_id: reggae_albums.id
  )

shanty = Item.create!(
  name: '007 Shanty Town',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544976716/shanty.png'),
  description: 'The first album of Desmond Dekker is great!',
  list_id: reggae_albums.id
  )

jimmy = Item.create!(
  name: 'The Harder They Come',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544977016/jimmy.png'),
  description: 'This is an awesome album of the reggae legend Jimmy Cliff',
  list_id: reggae_albums.id
  )

marley = Item.create!(
  name: 'Catch a fire',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544977115/marley.png'),
  description: 'Bob Marley´s album Catch a Fire changed the reggae scene forever',
  list_id: reggae_albums.id
  )

peterson = Item.create!(
  name: 'Night Train',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544977442/peterson.png'),
  description: 'This is a great album from Oscar Peterson, the best Canada´s legendary jazz pianist!',
  list_id: jazz_albums.id
  )

chick = Item.create!(
  name: 'Return to forever, light as a feather',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544977521/chick.png'),
  description: 'The legendary first lineup of Chick Corea´s fusion band Return to Forever debuted on this classic album',
  list_id: jazz_albums.id
  )

herbie = Item.create!(
  name: 'Headhunters',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544977618/herbie.png'),
  description: 'Head Hunters remains as one of the most sought after, influential jazz recordings ever created. Herbie Hancock is the best!',
  list_id: jazz_albums.id
  )

monk = Item.create!(
  name: 'Monk’s Dream',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544977723/monk.png'),
  description: 'While Monk’s Dream was not a turning point in the career of Thelonious Monk, it was a turning point in the acceptance of his work.',
  list_id: jazz_albums.id
  )

puts 'Creating 6 albums tags...'

reggae = Tag.create!(
  name: '#reggae'
  )

bobmarley = Tag.create!(
  name: '#bobmarley'
  )

jimmycliff = Tag.create!(
  name: '#jimmycliff'
  )

jazz = Tag.create!(
  name: '#jazz'
  )

pianist = Tag.create!(
  name: '#pianist'
  )
monk = Tag.create!(
  name: '#monk'
  )

puts 'Creating 6 albums lists tags...'

reggae1 = ListTag.create!(
  list_id: reggae_albums.id,
  tag_id: reggae.id
  )

bobmarley1 = ListTag.create!(
  list_id: reggae_albums.id,
  tag_id: bobmarley.id
  )

jimmycliff1 = ListTag.create!(
  list_id: reggae_albums.id,
  tag_id: jimmycliff.id
  )

jazz1 = ListTag.create!(
  list_id: jazz_albums.id,
  tag_id: jazz.id
  )

pianist1 = ListTag.create!(
  list_id: jazz_albums.id,
  tag_id: pianist.id
  )

monk1 = ListTag.create!(
  list_id: jazz_albums.id,
  tag_id: monk.id
  )

puts 'Creating 3 extra albums lists...'

rock_chops_albums = List.create!(
  list_type: 'albums',
  name: 'Rock Chops',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1545219457/497e8a34a39bcb9471396794df26e62d.jpg'),
  description: 'This list explores the Powerful guitar licks from classic rock!',
  user_id: allenah.id
  )

heavyweight_breaks_albums = List.create!(
  list_type: 'albums',
  name: 'Heavyweight Breaks',
  remote_photo_url: 'https://res.cloudinary.com/dtb2b6cpx/image/upload/v1545219170/R-398776-1501976624-8387.jpeg.jpg',
  description: 'Hot soul, funk, latin, and african beats!',
  user_id: paul.id
  )

hip_hop_gems_albums = List.create!(
  list_type: 'albums',
  name: 'Hip-hop Gems',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1545219230/the-lost-tapes.jpg'),
  description: 'A collection of hip-hop rarities',
  user_id: paul.id
  )

puts 'Creating extra albums items...'

valleys_of_neptune = Item.create!(
  name: 'Valleys of Neptune',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1545219457/497e8a34a39bcb9471396794df26e62d.jpg'),
  description: 'Valleys Of Neptune is far more than a quick payday for a record label, but rather a rock album that can be enjoyed just as one enjoys any other collection of high quality rock songs.',
  list_id: rock_chops_albums.id
  )

van_halen = Item.create!(
  name: 'Van Halen',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1545219283/220px-Van_Halen_album.jpg'),
  description: 'Van Halen’s 1978 landmark debut is a dizzying, high energy set of musical napalm that left many gobsmacked guitar players in its wake.',
  list_id: rock_chops_albums.id
  )

jailbreak = Item.create!(
  name: 'Jailbreak',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1545219170/R-398776-1501976624-8387.jpeg.jpg'),
  description: 'Thin Lizzy has a style of its own , it is not that heavy for a rock outfit but creates certain mood. And this is one of their best albums.',
  list_id: rock_chops_albums.id
  )
raw_power = Item.create!(
  name: 'Raw Power',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1545219499/R-489717-1268136694.jpeg.jpg'),
  description: 'Album´s title is self-explanatory for itself. Difference is class that Williamson´s guitars gave to this experience, letting this album even more tasteful and seducing.',
  list_id: rock_chops_albums.id
  )

let_it_bleed = Item.create!(
  name: 'Let it Bleed',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1545219525/R-2244952-1331736823.jpeg.jpg'),
  description: 'This is where the Stones became the world´s greatest rock and roll band. The groundwork was laid with Beggar´s Banquet, but solidified here.',
  list_id: rock_chops_albums.id
  )

like_it_like_that = Item.create!(
  name: 'I Like it Like That',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1545219555/151471841862.jpg'),
  description: 'There´s a reason they called him Mr. Boogaloo, and that other Pete Rodriguez (not "El Conde") works through both swinging boogaloo and well-played salsa on his first LP, I Like It Like That.',
  list_id: heavyweight_breaks_albums.id
  )

wanted_dead_or_alive = Item.create!(
  name: 'Wanted Dead or Alive',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1545219579/640x640.jpg'),
  description: 'Wanted Dead or Alive (Bang! Bang! Push Push Push) is part Latin, and part basic Latin soul (boogaloo). The boogaloos are very simple, relying on chants that live crowds could follow easily.',
  list_id: heavyweight_breaks_albums.id
  )

panama_2 = Item.create!(
  name: 'Panama 2',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1545219604/51UAXkAPJ7L._SX425_.jpg'),
  description: 'Love this collection. These albums are to Panameno´s, what the 1920´s are to the Jazz culture. Awesome arrangement of sound and a perfectly put together track listing.',
  list_id: heavyweight_breaks_albums.id
  )

 promised_heights = Item.create!(
  name: 'Promised Heights',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1545219638/51ajpaHTZ8L.jpg'),
  description: 'Promised Heights, the title cut, is strong, and should have done better for Cymande. It has the lilt and beauty of earlier sides, the horn work is sensational, and a nice sax solo scintillates.',
  list_id: heavyweight_breaks_albums.id
  )

african_scream_contest = Item.create!(
  name: 'African Scream Contest',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1545219670/a1311214925_5.jpg'),
  description: 'What a crazy but totally exhilarating little soulfully psychedelic morsel from the deep dark corners of Africa! This comp is absolutely amazing, groovy beats, acid-like breakouts, fuzz guitar and an acceptable bootleg finish!',
  list_id: heavyweight_breaks_albums.id
  )

good_foot = Item.create!(
  name: 'Get On the Good Foot',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1545219804/51-MQJgdVdL.jpg'),
  description: 'James Brown, like Johnny Cash, has more greatest hits albums than actual studio albums. So when you can find an actual studio album, you should get it. And this is an actual studio album. And it happens to be filled with some of his greatest hits, some of which are actually different versions than you may have heard already.',
  list_id: heavyweight_breaks_albums.id
  )

let_my_people_go = Item.create!(
  name: 'Let My People Go',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1545219842/darondo-let-my-people-go.jpg'),
  description: 'The music on Let My People Go can stand proudly next to virtually any of Darondo´s creative contemporaries. In fact, the music on this reissue makes a good argument that, had he not abruptly disappeared, Darondo wouldn´t be obscure at all. Quite frankly, this is some of the best music available from what is generally regarded as a very impressive musical era.',
  list_id: heavyweight_breaks_albums.id
  )

album_of_the_year = Item.create!(
  name: 'Album Of The Year',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1545219877/220px-BlackMilkAlbumoftheYear.jpg'),
  description: 'Album of the Year indeed. Black Milk´s beats are always hard and he is only improving on the mic. Proving that Detroit is a powerhouse of rap, he brings Royce and Elzhi from SV (or formerly of Slum Village) on for Deadly Meadly. This song is absolutely dope.',
  list_id: hip_hop_gems_albums.id
  )

shame_ep = Item.create!(
  name: 'Shame EP',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1545219907/51iNhMVGxlL._SY355_.jpg'),
  description: 'Madlib is a genius and this record is worth every cent. Came shipped quick and in good packaging. Suggested for everyone who enjoys Madlib or Freddie Gibbs.',
  list_id: hip_hop_gems_albums.id
  )

the_lost_tapes = Item.create!(
  name: 'The Lost Tapes',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1545219230/the-lost-tapes.jpg'),
  description: 'The Lost Tapes is GFK doing him, with hardcore lyricism and smooth, slick beats. He absolutely kills it with the guest features, which was the best thing about this project.',
  list_id: hip_hop_gems_albums.id
  )

stones_throw = Item.create!(
  name: 'Stones Throw',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1545219993/51EZbFpZDsL._SS500.jpg'),
  description: 'Stones Throw Ten Years compiles 25 of the best releases of the last 10 years. The label has done an excellent job of capturing the diversity of their catalog - hip hop, funk, disco, experimental electro-soul/jazz.',
  list_id: hip_hop_gems_albums.id
  )

puts 'Finished extra 3 albums lists'

puts 'Starting demo extra seeds...'

puts 'Creating paul dones...'

like1 = Like.create!(
  item_id: topo.id,
  user_id: paul.id
  )

like2 = Like.create!(
  item_id: psi.id,
  user_id: paul.id
  )

like3 = Like.create!(
  item_id: seven.id,
  user_id: paul.id
  )

like4 = Like.create!(
  item_id: home_alone.id,
  user_id: paul.id
  )

like5 = Like.create!(
  item_id: marley.id,
  user_id: paul.id
  )

puts 'Creating allenah dones...'

like6 = Like.create!(
  item_id: mercantina.id,
  user_id: allenah.id
  )

like7 = Like.create!(
  item_id: quimera.id,
  user_id: allenah.id
  )

like9 = Like.create!(
  item_id: herbie.id,
  user_id: allenah.id
  )

puts 'Creating brunch list dones...'

like10 = Like.create!(
  item_id: topo.id,
  user_id: pedro.id
  )

like11 = Like.create!(
  item_id: topo.id,
  user_id: carlotta.id
  )

like12 = Like.create!(
  item_id: topo.id,
  user_id: chris.id
  )

like13 = Like.create!(
  item_id: boulangerie.id,
  user_id: chris.id
  )

like14 = Like.create!(
  item_id: heim.id,
  user_id: clelia.id
  )

like15 = Like.create!(
  item_id: heim.id,
  user_id: jami.id
  )

like16 = Like.create!(
  item_id: heim.id,
  user_id: ines.id
  )

like17 = Like.create!(
  item_id: heim.id,
  user_id: manuel.id
  )

like18 = Like.create!(
  item_id: amelia.id,
  user_id: manuel.id
  )

like19 = Like.create!(
  item_id: amelia.id,
  user_id: ines.id
  )

like20 = Like.create!(
  item_id: zenith.id,
  user_id: ines.id
  )

puts 'Creating paul bookmarks...'

boomark4 = Bookmark.create!(
  item_id: suzanne.id,
  user_id: paul.id
  )

boomark3 = Bookmark.create!(
  item_id: amelia.id,
  user_id: paul.id
  )

boomark2 = Bookmark.create!(
  item_id: mercantina.id,
  user_id: paul.id
  )

boomark1 = Bookmark.create!(
  item_id: anger.id,
  user_id: paul.id
  )
puts 'Creating 2 extra lists...'

rui_rock_album = List.create!(
  list_type: 'albums',
  name: 'Rui´s Rock Chops',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1545219457/497e8a34a39bcb9471396794df26e62d.jpg'),
  description: 'This list explores the Powerful guitar licks from classic rock!',
  user_id: rui.id
  )

bairro_bars_album = List.create!(
  list_type: 'albums',
  name: 'Best bars in Bairro',
  remote_photo_url: ('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1545390367/492618.jpg'),
  description: 'My favourite bars in Bairro Alto',
  user_id: pedro.id
  )

puts 'Creating paul follows...'

follow1 = Follow.create!(
  list_id: vegan_restaurants.id,
  user_id: paul.id
  )

follow2 = Follow.create!(
  list_id: rui_rock_album.id,
  user_id: paul.id
  )

follow3 = Follow.create!(
  list_id: reggae_albums.id,
  user_id: paul.id
  )

follow4 = Follow.create!(
  list_id: bairro_bars_album.id,
  user_id: paul.id
  )

follow5 = Follow.create!(
  list_id: christmas_movies.id,
  user_id: paul.id
  )

puts 'Creating brunch heim comments...'

heim_comment1 = Comment.create!(
  description: 'They have three great brunch options!',
  item_id: heim.id,
  user_id: manuel.id
  )

heim_comment2 = Comment.create!(
  description: 'A nice place for breakfast or for a coffee in the the middle of the day.',
  item_id: heim.id,
  user_id: carlotta.id
  )

heim_comment3 = Comment.create!(
  description: 'The food is excelent and the staff is very nice,',
  item_id: heim.id,
  user_id: nick.id
  )

heim_comment4 = Comment.create!(
  description: 'This is a super friendly place with great fresh orange juice and great dishes!',
  item_id: heim.id,
  user_id: mathilde.id
  )

puts 'Creating another vegan list item...'

juicy = Item.create!(
  name: 'Juicy',
  remote_photo_url: 'https://res.cloudinary.com/dtb2b6cpx/image/upload/v1545174945/juicy.jpg',
  description: 'This restaurant just opened in the heart of Lisbon. It has great healthy, plant-based food.',
  list_id: vegan_restaurants.id
  )



puts 'Finished extra seeds demo'

puts 'Finished seeds'
