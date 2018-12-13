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

puts 'Creating 2 paul lists...'

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
  user_id: paul.id
  )

puts 'Creating 10 paul items...'

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

puts 'Creating 3 allenah restaurants lists...'

brunch_restaurants = List.create!(
  list_type: 'restaurants',
  name: 'Brunch spots in Lisbon',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544694252/brunch.jpg'),
  description: 'The best brunch places to go with friends during the weekend, with great food. And they will all look awesome on your instagram!',
  user_id: allenah.id
  )

vegan_restaurants = List.create!(
  list_type: 'restaurants',
  name: 'Restaurants for veggie lovers',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544694290/vegan.jpg'),
  description: 'Vegetarian restaurants with quality products and tasty dishes. Veggie food can be really tasty!',
  user_id: allenah.id
  )

italian_restaurants = List.create!(
  list_type: 'restaurants',
  name: 'The best Italian cuisine',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544694323/italian.jpg'),
  description: 'When you’re craving for crusty pizzas, for freshly made pasta, or for a break from the Portuguese traditional food, these are the best Italian restaurants in Lisbon.',
  user_id: allenah.id
  )

puts 'Creating 7 allenah restaurants items...'

zenith = Item.create!(
  name: 'Zenith',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544694354/zenith.jpg'),
  description: 'The food is delicious, especially the pancakes and the sweet potato toast with avocado. And the brunch menu is available every day.',
  list_id: brunch_restaurants.id
  )

amelia  = Item.create!(
  name: 'Amelia',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544694389/amelia.png'),
  description: 'Tasty and healthy food, in a really cool location! I recommend the waffles and the acai bowl.',
  list_id: brunch_restaurants.id
  )

heim  = Item.create!(
  name: 'Heim cafe',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544694421/heim.jpg'),
  description: 'The place has become so popular that weekend lines are unavoidable. Don’t give up, because all three of their brunch options are delicious.',
  list_id: brunch_restaurants.id
  )

boulangerie  = Item.create!(
  name: 'Boulangerie',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544694462/boulangerie.jpg'),
  description: 'The brunch menu offers some of the best freshly baked croissants I have ever tasted. You have to try it!',
  list_id: brunch_restaurants.id
  )

topo  = Item.create!(
  name: 'Topo',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544694494/topo.jpg'),
  description: 'If you want to enjoy a tasty brunch with a great view, this is the place to go to!',
  list_id: brunch_restaurants.id
  )

psi = Item.create!(
  name: 'Psi Vegetariano',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544694523/psi.jpg'),
  description: 'Wide-ranging array of veggie dishes in a relaxed restaurant with a lakeside terrace in lush gardens.',
  list_id: vegan_restaurants.id
  )

mercantina = Item.create!(
  name: 'Mercantina',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544694552/mercantina.jpg'),
  description: 'It brings to the table the Neapolitan tradition – fluffier dough, thick on the edges, damp in the middle. A pizzeria with a super-deluxe oven custom-made in Napoli.',
  list_id: italian_restaurants.id
  )

puts 'Creating 7 allenah restaurants comments...'

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
  user_id: carolina.id
  )

puts 'Creating 14 allenah restaurants list tags...'

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

puts 'Finished allenah restaurants lists!'

puts 'Creating 3 allenah movies lists...'

thriller_movies = List.create!(
  list_type: 'movies',
  name: 'Best Thrillers Ever',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544695763/thriller.jpg'),
  description: 'This list contains the best thriller movies of all time. A thrilling list to get the adrenaline flowing!',
  user_id: allenah.id
  )

comedy_movies = List.create!(
  list_type: 'movies',
  name: 'Just a few of my Favourite Comedies',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544695787/comedy.jpg'),
  description: 'In this list I focus on the comedy part of my favourite movies, because I love to laugh . . . ok giggle!',
  user_id: allenah.id
  )

christmas_movies = List.create!(
  list_type: 'movies',
  name: 'Favourite Christmas Classics',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544695808/christmas.jpg'),
  description: 'This list contains the best christmas movies of all time!',
  user_id: allenah.id
  )

puts 'Creating 9 allenah movies items...'

silence = Item.create!(
  name: 'The Silence of the Lambs',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544695763/thriller.jpg'),
  description: 'The plot is simply genius. Jodie Foster gives a stellar performance as the trainee agent and Anthony Hopkins is  beyond excellence and comparison  in his portrayal of Hannibal Lecter. Do not miss it!',
  list_id: thriller_movies.id
  )

seven = Item.create!(
  name: 'Seven',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544695899/seven.jpg'),
  description: 'Even though the ending of the movie is quite predictable, the storyline is so gripping that you get yourself into the movie till the end.Great acting by Brad Pitt,Kevin Spacey and Morgan Freeman.',
  list_id: thriller_movies.id
  )

dodgeball = Item.create!(
  name: 'Dodgeball',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544695924/dodgeball.jpg'),
  description: 'If you can dodge a wrench, you can dodge a ball. If you are looking for 92 minutes of mindless fun and countless quotable moments...this has everything you are looking for.',
  list_id: comedy_movies.id
  )

anger = Item.create!(
  name: 'Anger Management',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544695951/anger.jpg'),
  description: 'I thought the movie was hilarious if I am honest..I do believe you need to have a wacky sense of humour to laugh at the script etc but I just found that Sandler actually played the part very well and his co stars in the anger management group were excellent.',
  list_id: comedy_movies.id
  )

home_alone = Item.create!(
  name: 'Home Alone',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544695990/homealone.jpg'),
  description: 'I love this movie and it is one of my favourites around the holidays. It is a holiday classic that everyone should watch and enjoy.',
  list_id: christmas_movies.id
  )

miracle = Item.create!(
  name: 'Miracle on 34th Street',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544696020/miracle.jpg'),
  description: 'If you are after an entirely pleasant, inoffensive, feel-good movie at Christmas, this is it: the kind of innocent, utterly charming, hanky-ringing fare that they are not supposed to be making any more.',
  list_id: christmas_movies.id
  )

love_actually = Item.create!(
  name: 'Love Actually',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544696048/loveactually.jpg'),
  description: '"Love actually" may not be true but the happiness in it is truly grandiose, after all is not happiness the only true purpose of life. Merry Christmas and a happy new year.. 🍻 cheers..!!',
  list_id: christmas_movies.id
  )

holiday = Item.create!(
  name: 'The Holiday',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544696086/holiday.jpg'),
  description: 'Perfect dreamy Christmas holiday movie…. A beautiful portrayal of unexpected relationships and amazing performances makes this movie worth a watch. You should definitely go on this holiday!',
  list_id: christmas_movies.id
  )

grinch = Item.create!(
  name: 'The Grinch',
  photo: open('https://res.cloudinary.com/dtb2b6cpx/image/upload/v1544696116/grinch.jpg'),
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

puts 'Finished seeds'
