puts "creation m..."

user = User.new(
  email: "tutu@gmail.com",
  password: "123456",
  name: "tutu",
  company: "webcompany",
  phone: "0456342345",
  area: "tech",
  location: "paris",
  upvote: 2,
  fav: "Excellent worker"
)
user.save!

user = User.new(
  email: "tata@gmail.com",
  password: "123456",
  name: "tata",
  company: "Webagency",
  phone: "0326311345",
  area: "marketing",
  location: "Lyon",
  upvote: 1,
  fav: "Amazingly done !"
)
user.save!

mission = Mission.new(
  name: "Projet Danone",
  area: "food",
  location: "Paris",
  description: "JS secret app for the US market",
  price: "1000",
  start_date: "01/01/2024",
  end_date: "01/05/2024",
  user_id: 6
)
mission.save!

mission = Mission.new(
  name: "Projet Tesla",
  area: "automotive",
  location: "San Francisco",
  description: "Python project to improve the cars",
  price: "1500",
  start_date: "01/03/2024",
  end_date: "01/05/2024",
  user_id: 6
)
mission.save!


# dev = Dev.new(
#   name: "Johnny",
#   email: "johnny@johnny.com",
#   availability: true,
#   password: "123456",
#   phone: "0102030405",
#   area: "agriculture",
#   upvote: 10,
#   location: "Marseille",
#   diploma: "Le Wagon 2023",

#   # soft_skill: ["teamwork", "stress control", "communication"],
#   # language: ["Python", "HTML5"]
# )
# dev.save!
# dev = Dev.new(
#   name: "Lucy",
#   email: "lucy@lucy.com",
#   availability: true,
#   password: "123456",
#   phone: "0102030406",
#   area: "energy",
#   upvote: 45,
#   location: "Lyon",
#   diploma: "Le Wagon 2020",

#   # soft_skill: ["autonomy", "teamwork", "communication"],
#   # language: ["Python", "HTML5", "Ruby", "Javascript"]
# )
# dev.save!

# dev = Dev.new(
#   name: "Emily",
#   email: "emily@emily.com",
#   availability: true,
#   password: "123456",
#   phone: "0102030407",
#   area: "healthcare",
#   upvote: 4,
#   location: "Marseille",
#   diploma: "Le Wagon 2023",

#   # soft_skill: ["adaptative", "stress control", "organised"],
#   # language: ["Ruby", "HTML5"]
# )
# dev.save!

# dev = Dev.new(
#   name: "Anthony",
#   email: "anthony@anthony.com",
#   availability: true,
#   password: "123456",
#   phone: "0102030408",
#   area: "communication",
#   upvote: 10,
#   location: "Paris",
#   diploma: "Le Wagon 2019",

#   # soft_skill: ["reactivity", "adaptative"],
#   # language: ["Python", "Javascript", "Ruby"]
# )
# dev.save!

# match = Match.new(
#   comment: "Amazing",
#   dev_id: 3,
#   mission_id: 4,
#   accepted: true
# )
# match.save!
# match1 = Match.new(
#   comment: "the best ever",
#   dev_id: 2,
#   mission_id: 5,
#   accepted: true
# )
# match1.save!
# match2 = Match.new(
#   comment: "nobody moves like this",
#   dev_id: 1,
#   mission_id: 4,
#   accepted: true
# )
# match2.save!
# match3 = Match.new(
#   comment: "perfecto",
#   dev_id: 4,
#   mission_id: 5,

#   accepted: true
# )
# match3.save!
