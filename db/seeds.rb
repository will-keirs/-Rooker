puts "creation m..."
Devlangmission.destroy_all
Devsoftmission.destroy_all
Match.destroy_all
Mission.destroy_all
User.destroy_all

user1 = User.new(
  email: "lolo@gmail.com",
  password: "123456",
  name: "tutu",
  company: "webcompany",
  phone: "0456342345",
  area: "tech",
  location: "paris",
  upvote: 2,
  fav: "Excellent worker"
)
user1.save!

user2 = User.new(
  email: "lele@gmail.com",
  password: "123456",
  name: "tata",
  company: "Webagency",
  phone: "0326311345",
  area: "marketing",
  location: "Lyon",
  upvote: 1,
  fav: "Amazingly done !"
)
user2.save!

mission1 = Mission.new(
  name: "Projet Danone",
  area: "food",
  location: "Paris",
  description: "JS secret app for the US market",
  price: "1000",
  start_date: "01/01/2024",
  end_date: "01/05/2024",
  user: user1
)
mission1.save!

mission2 = Mission.new(
  name: "Projet Tesla",
  area: "automotive",
  location: "San Francisco",
  description: "Python project to improve the cars",
  price: "1500",
  start_date: "01/03/2024",
  end_date: "01/05/2024",
  user: user2
)
mission2.save!

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
  dev: dev1,
  mission: mission1,
  accepted: true
)
match.save!
match1 = Match.new(
  comment: "the best ever",
  dev: dev1,
  mission: mission1,
  accepted: true
)
match1.save!
match2 = Match.new(
  comment: "nobody moves like this",
  dev: dev1,
  mission: mission1,
  accepted: true
)
match2.save!
match3 = Match.new(
  comment: "perfecto",
  dev: dev1,
  mission: mission1,
  accepted: true
)
match3.save!
l = Language.create!(langtype: "Ruby")
l1 = Language.create!(langtype: "PHP")
l2 = Language.create!(langtype: "Python")
l3 = Language.create!(langtype: "Javascript")
l4 = Language.create!(langtype: "Java")
l5 = Language.create!(langtype: "CSS-3")
l6 = Language.create!(langtype: "HTML-5")
l7 = Language.create!(langtype: "React")
l8 = Language.create!(langtype: "MySQL")
l9 = Language.create!(langtype: "C++")
l10 = Language.create!(langtype: "C")

sk = SoftSkill.create!(skill: "Adaptability")
sk1 = SoftSkill.create!(skill: "Stress management")
sk2 = SoftSkill.create!(skill: "Ability to federate")
sk3 = SoftSkill.create!(skill: "Communication")
sk5 = SoftSkill.create!(skill: "Autonomy")
sk4 = SoftSkill.create!(skill: "Decision-making capacity")
sk6 = SoftSkill.create!(skill: "Sense of organization")
sk7 = SoftSkill.create!(skill: "Strength of proposal")
sk8 = SoftSkill.create!(skill: "Perseverance")
sk9 = SoftSkill.create!(skill: "Taking a step back")
sk10 = SoftSkill.create!(skill: "Reactivity")
sk11 = SoftSkill.create!(skill: "Teamwork")
sk12 = SoftSkill.create!(skill: "Rigour")
sk13 = SoftSkill.create!(skill: "Joyful")

Devlangmission.create!(dev: dev1, language: l1, mission: mission1)
Devlangmission.create!(dev: dev2, language: l2, mission: mission2)
Devlangmission.create!(dev: dev3, language: l3, mission: mission2)
Devlangmission.create!(dev: dev4, language: l, mission: mission1)
Devlangmission.create!(dev: dev1, language: l4, mission: mission1)
Devlangmission.create!(dev: dev2, language: l5, mission: mission2)
Devlangmission.create!(dev: dev3, language: l6, mission: mission2)
Devlangmission.create!(dev: dev4, language: l7, mission: mission1)
Devlangmission.create!(dev: dev1, language: l8, mission: mission1)
Devlangmission.create!(dev: dev2, language: l9, mission: mission2)
Devlangmission.create!(dev: dev3, language: l10, mission: mission2)
Devlangmission.create!(dev: dev4, language: l4, mission: mission1)
Devlangmission.create!(dev: dev1, language: l2, mission: mission1)
Devlangmission.create!(dev: dev3, language: l7, mission: mission2)
Devlangmission.create!(dev: dev1, language: l1, mission: mission1)
Devlangmission.create!(dev: dev2, language: l2, mission: mission2)
Devlangmission.create!(dev: dev3, language: l3, mission: mission2)
Devlangmission.create!(dev: dev4, language: l, mission: mission1)


Devsoftmission.create!(dev: dev1, soft_skill: sk1, mission: mission1)
Devsoftmission.create!(dev: dev2, soft_skill: sk2, mission: mission1)
Devsoftmission.create!(dev: dev3, soft_skill: sk3, mission: mission2)
Devsoftmission.create!(dev: dev4, soft_skill: sk4, mission: mission2)
Devsoftmission.create!(dev: dev1, soft_skill: sk, mission: mission1)
Devsoftmission.create!(dev: dev2, soft_skill: sk5, mission: mission1)
Devsoftmission.create!(dev: dev3, soft_skill: sk6, mission: mission2)
Devsoftmission.create!(dev: dev4, soft_skill: sk7, mission: mission2)
Devsoftmission.create!(dev: dev1, soft_skill: sk8, mission: mission1)
Devsoftmission.create!(dev: dev2, soft_skill: sk9, mission: mission1)
Devsoftmission.create!(dev: dev3, soft_skill: sk10, mission: mission2)
Devsoftmission.create!(dev: dev4, soft_skill: sk11, mission: mission2)
Devsoftmission.create!(dev: dev1, soft_skill: sk12, mission: mission1)
Devsoftmission.create!(dev: dev2, soft_skill: sk13, mission: mission1)
Devsoftmission.create!(dev: dev3, soft_skill: sk, mission: mission2)
Devsoftmission.create!(dev: dev4, soft_skill: sk2, mission: mission2)
Devsoftmission.create!(dev: dev1, soft_skill: sk3, mission: mission1)
Devsoftmission.create!(dev: dev2, soft_skill: sk4, mission: mission1)
Devsoftmission.create!(dev: dev3, soft_skill: sk5, mission: mission2)
Devsoftmission.create!(dev: dev4, soft_skill: sk6, mission: mission2)
Devsoftmission.create!(dev: dev1, soft_skill: sk7, mission: mission1)
Devsoftmission.create!(dev: dev2, soft_skill: sk8, mission: mission1)
Devsoftmission.create!(dev: dev3, soft_skill: sk9, mission: mission2)
Devsoftmission.create!(dev: dev4, soft_skill: sk10, mission: mission2)
Devsoftmission.create!(dev: dev1, soft_skill: sk11, mission: mission1)
Devsoftmission.create!(dev: dev2, soft_skill: sk12, mission: mission1)
Devsoftmission.create!(dev: dev3, soft_skill: sk13, mission: mission2)
Devsoftmission.create!(dev: dev4, soft_skill: sk, mission: mission2)

