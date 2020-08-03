# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)





#users

#perfermers
performer1 = User.create({ 
  name: "Lando",  
  email: "example@gmail.com", 
  number: 3064703625, 
  profile_pic: "https://images.unsplash.com/photo-1549834125-82d3c48159a3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", 
  description:"Lively band", 
  username: "lando123", 
  location: "saskatoon", 
  is_performer: true, 
  size: 4 
})
performer2 = User.create({ 
  name: "Massimo",  
  email: "massimo123@gmail.com", 
  number: 3062437814, 
  profile_pic: "https://images.unsplash.com/photo-1573470167254-315246dd477d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", 
  description:"I'm a classical piano musician.", 
  username: "massimo78", 
  location: "Calgary", 
  is_performer: true, 
  size: 1 
})


#hosts
host1 = User.create({ 
  name: "Rheema Timmer",  
  email: "rheemaexample@gmail.com", 
  number: 3064703625, 
  profile_pic: "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", 
  description:"i love to host bands at my grape vineyard and help local artists get exposure", 
  username: "rheemat", 
  location: "calary", 
  is_performer: false
})


host2 = User.create({ 
  name: "Milana Rivera",  
  email: "milana@gmail.com", 
  number: 3064703612, 
  profile_pic: "https://images.unsplash.com/photo-1489424731084-a5d8b219a5bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", 
  description:"Backyard garden space", 
  username: "milanagarden", 
  location: "saskatoon", 
  is_performer: false, 
})


#genre_category

jazz = GenreCategory.create({
  name: "Jazz"
})

folk = GenreCategory.create({
  name: "Folk"
})

classical = GenreCategory.create({
  name: "Classical"
})

rock = GenreCategory.create({
  name: "Rock"
})

pop = GenreCategory.create({
  name: "Pop"
})

cultural = GenreCategory.create({
  name: "Cultural"
})

performer1.genres.create()

#genres

# genre1 = Genre.create({
#   user_id: 1 ,
#   genre_categories_id: 1
# })


#recordings
performer1.recordings.create({
  name: "cotton eyed joe",
  url: "https://www.youtube.com/watch?v=mOYZaiDZ7BM",
  description: "Put your cowboy boots on. This song is perfect for tearing down the barn"
})
performer1.recordings.create({
  name: "Moonlight",
  url: "https://www.youtube.com/watch?v=ntHvbR2c4E0",
  description: "Chill feel good song for all your chill events"
})
performer1.recordings.create({
  name: "Float",
  url: "https://www.youtube.com/watch?v=Nl9LrqV_HG8&list=RDNl9LrqV_HG8&start_radio=1",
  description: "Chill instrumental"
})

performer2.recordings.create({
  name: "Honey",
  url: "https://www.youtube.com/watch?v=1w2JV01fTPs",
  description: "Smooth hiphop"
})
performer2.recordings.create({
  name: "321Jazz",
  url: "https://www.youtube.com/watch?v=HepnHvykQGA",
  description: "Snazzy Jazz"
})
performer2.recordings.create({
  name: "Lemonade",
  url: "https://www.youtube.com/watch?v=xN2TVpsIo34",
  description: "Chill summer beats"
})




#host spaces
#host 1
host1_space1 = host1.spaces.create({
  capacity: 100,
  address: "4037  Orenda Rd"
})

host1_space2 = host1.spaces.create({
  capacity: 50,
  address: "2223  rue des Champs"
})
#host 2
host2_space1 = host2.spaces.create({
  capacity: 50,
  address: "315 Ave A South"
})

host2_space2 = host2.spaces.create({
  capacity: 50,
  address: "4365  Scarth Street"
})

host2_space3 = host2.spaces.create({
  capacity: 50,
  address: "22 Spadina Cres"
})

#space pics
#host 1 space 1
host1_space1.space_pictures.create({
  url: "https://images.unsplash.com/photo-1563341591-ad0a750911cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
})
#host 1 space 2
host1_space2.space_pictures.create({
  url: "https://images.unsplash.com/photo-1566197147239-58a2590553b1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
})

host1_space2.space_pictures.create({
  url: "https://images.unsplash.com/photo-1551806235-fa3578e4ec2c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
})
#host 2 space 1
host2_space1.space_pictures.create({
  url: "https://images.unsplash.com/photo-1592008432356-8ef189954b5a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
})
host2_space1.space_pictures.create({
  url: "https://images.unsplash.com/photo-1592008432356-8ef189954b5a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
})
host2_space1.space_pictures.create({
  url: "https://images.unsplash.com/photo-1587702068694-a909ef4aa346?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
})
#host 2 space 2
host2_space2.space_pictures.create({
  url: "https://images.unsplash.com/photo-1499955085172-a104c9463ece?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
})
host2_space2.space_pictures.create({
  url: "https://images.unsplash.com/photo-1551806136-68d2868db7b5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
})
#host 2 space 3
host2_space3.space_pictures.create({
  url: "https://images.unsplash.com/photo-1551806235-a05dd14a54c7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
})

#events
#host 1 space 1
host1_space1.events.create({
  date: "2020-10-02",
  time: "12:00",
  am: false,
  name: "Jazz Fest",
  price: 15.00,
  description: "Join us at our annual jazz festival and show case your jazzy tunes",
  duration: "180",
  attendants: 15
})
host1_space1.events.create({
  date: "2020-4-23" ,
  time: "11:00",
  am: true,
  name: "Garden Tea",
  price: 12.50,
  description: "Looking for calm and upbeat melodies!",
  duration: "250",
  attendants: 50
})
#host 1 space 2
host1_space2.events.create({
  date: "2020-12-21",
  time: "6:00",
  am: false,
  name: "Dinner Party",
  price: 12.50,
  description: "Groovy feel good tunes over dinner! ",
  duration: "180",
  attendants: 30
})
host1_space2.events.create({
  date: "2020-11-01",
  time: "9:00",
  am: false,
  name: "Wine and Cheese Night",
  price: 25.00,
  description: "Wine and cheese night with mellow music",
  duration: "230",
  attendants: 50
})
#host 2 space 1

host2_space1.events.create({
  date: "2020-09-15",
  time: "8:00",
  am: false,
  name: "Classical Evening",
  price: 20.00,
  description: "Black tie event! Spend an evening with top notch classical performances. ",
  duration: "180",
  attendants: 70
})
#host 2 space 2

host2_space2.events.create({
  date: "2020-11-09",
  time: "3:00",
  am: false,
  name: "Kick it",
  price: 12.50,
  description: "Grab your pals and enjoy a night out with some upbeat pop beats",
  duration: "200",
  attendants: 100
})

host2_space2.events.create({
  date: "2020-08-25",
  time:"7:00",
  am: false,
  name: "Sunset",
  price: 12.50,
  description: "Sunset dine to some folk music",
  duration: "180",
  attendants: 200
})
#host 2 space 3
host2_space3.events.create({
  date: "2020-10-21",
  time: "11:00",
  am: true,
  name: "Jazzy Bop",
  price: 5.00,
  description: "Check out the jazziest bopalapolous peeps in town",
  duration: "180",
  attendants: 120
})