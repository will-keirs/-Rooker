puts "creation m..."
# User.destroy_all

# user = User.new(
#   email: "lolo@gmail.com",
#   password: "123456",
#   name: "tutu",
#   company: "webcompany",
#   phone: "0456342345",
#   area: "tech",
#   location: "paris",
#   upvote: 2,
#   fav: "Excellent worker"
# )
# user.save!

# user = User.new(
#   email: "lele@gmail.com",
#   password: "123456",
#   name: "tata",
#   company: "Webagency",
#   phone: "0326311345",
#   area: "marketing",
#   location: "Lyon",
#   upvote: 1,
#   fav: "Amazingly done !"
# )
# user.save!

mission = Mission.new(
  name: "Projet Danone",
  area: "food",
  location: "Paris",
  description: "JS secret app for the US market",
  price: "1000",
  start_date: "01/01/2024",
  end_date: "01/05/2024",
  user_id: 1
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
  user_id: 2
)
mission.save!

dev1 = Dev.new(
  name: "Johnny",
  email: "johnny@johnny.com",
  availability: true,
  password: "123456",
  phone: "0102030405",
  area: "agriculture",
  upvote: 10,
  location: "Marseille",
  diploma: "Le Wagon 2023"
)
dev1.save!

dev2 = Dev.new(
  name: "Lucy",
  email: "lucy@lucy.com",
  availability: true,
  password: "123456",
  phone: "0102030406",
  area: "energy",
  upvote: 45,
  location: "Lyon",
  diploma: "Le Wagon 2020"
)
dev2.save!

dev3 = Dev.new(
  name: "Emily",
  email: "emily@emily.com",
  availability: true,
  password: "123456",
  phone: "0102030407",
  area: "healthcare",
  upvote: 4,
  location: "Marseille",
  diploma: "Le Wagon 2023"
)
dev3.save!

dev4 = Dev.new(
  name: "Anthony",
  email: "anthony@anthony.com",
  availability: true,
  password: "123456",
  phone: "0102030408",
  area: "communication",
  upvote: 10,
  location: "Paris",
  diploma: "Le Wagon 2019"
)
dev4.save!

match = Match.new(
  comment: "Amazing",
  dev_id: 11,
  mission_id: 6,
  accepted: true
)
match.save!
match1 = Match.new(
  comment: "the best ever",
  dev_id: 9,
  mission_id: 5,
  accepted: true
)
match1.save!

match2 = Match.new(
  comment: "nobody moves like this",
  dev_id: 10,
  mission_id: 6,
  accepted: true
)
match2.save!

match3 = Match.new(
  comment: "perfecto",
  dev_id: 10,
  mission_id: 5,
  accepted: true
)
match3.save!

l = Language.create!(langtype: "Ruby")
l1 = Language.create!(langtype: "PHP")
l2 = Language.create!(langtype: "Python")
l3 = Language.create!(langtype: "Javascript")

sk = SoftSkill.create!(skill: "Creative")
sk1 = SoftSkill.create!(skill: "Autonomous")
sk2 = SoftSkill.create!(skill: "Joyful")
sk3 = SoftSkill.create!(skill: "Rigorous")
sk5 = SoftSkill.create!(skill: "Teamwork")
sk4 = SoftSkill.create!(skill: "Curious")

Devlangmission.create!(dev: dev1, language: l1, mission_id: 5)
Devlangmission.create!(dev: dev2, language: l2, mission_id: 6)
Devlangmission.create!(dev: dev3, language: l3, mission_id: 5)
Devlangmission.create!(dev: dev4, language: l, mission_id: 6)

Devsoftmission.create!(dev: dev1, soft_skill: sk1, mission_id: 5)
Devsoftmission.create!(dev: dev2, soft_skill: sk2, mission_id: 6)
Devsoftmission.create!(dev: dev3, soft_skill: sk3, mission_id: 5)
Devsoftmission.create!(dev: dev4, soft_skill: sk4, mission_id: 6)
