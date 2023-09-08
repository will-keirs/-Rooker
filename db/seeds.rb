puts "creation m..."
Devlangmission.destroy_all
Devsoftmission.destroy_all
Match.destroy_all
Dev.destroy_all
Mission.destroy_all
User.destroy_all
SoftSkill.destroy_all
Language.destroy_all


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
  name: "Antoine",
  email: "antoine@gmail.com",
  availability: false,
  password: "123456",
  phone: "0102030405",
  area: "Education",
  upvote: 10,
  location: "Marseille",
  diploma: "Le Wagon 2023",
  photo: "Antoine.jpg",
  description:"I love coding for science; it's my passion! I've been fortunate to work on numerous missions and I'm ready to take on yours.",
  github_link: "https://github.com/will-keirs",
  linkedin_link: "https://fr.linkedin.com/in/lorenzo-lara-331a9972",
  website_link: "https://lorenzolara.myportfolio.com/",
  twitter_link: "https://lorenzolara.myportfolio.com/",
  facebook_link: "https://lorenzolara.myportfolio.com/",
  insta_link: "https://lorenzolara.myportfolio.com/"
)
dev1.save!
dev2 = Dev.new(
  name: "Jean-Loup",
  email: "jean-loup@gmail.com",
  availability: true,
  password: "123456",
  phone: "0102030406",
  area: "Energy",
  upvote: 45,
  location: "Marseille",
  diploma: "Le Wagon 2023",
  photo: "JeanLoup.jpg",
  description: "I've been a teacher at Le Wagon for several years and have worked on many ambitious projects. I'm seeking new opportunities. Passionate about sailing.",
  github_link: "https://github.com/will-keirs",
  linkedin_link: "https://fr.linkedin.com/in/lorenzo-lara-331a9972",
  website_link: "https://lorenzolara.myportfolio.com/",
  twitter_link: "https://lorenzolara.myportfolio.com/",
  facebook_link: "https://lorenzolara.myportfolio.com/",
  insta_link: "https://lorenzolara.myportfolio.com/"
)
dev2.save!
dev3 = Dev.new(
  name: "Dylane",
  email: "dylane@gmail.com",
  availability: true,
  password: "123456",
  phone: "0102030407",
  area: "Healthcare",
  upvote: 4,
  location: "Marseille",
  diploma: "Le Wagon 2023",
  photo: "Dylane.jpg",
  description: "Dylane, a developer for several years. I enjoy tackling complex challenges and launching ambitious projects. A fan of rap music.",
  github_link: "https://github.com/will-keirs",
  linkedin_link: "https://fr.linkedin.com/in/lorenzo-lara-331a9972",
  website_link: "https://lorenzolara.myportfolio.com/",
  twitter_link: "https://lorenzolara.myportfolio.com/",
  facebook_link: "https://lorenzolara.myportfolio.com/",
  insta_link: "https://lorenzolara.myportfolio.com/"
)
dev3.save!
dev4 = Dev.new(
  name: "Maewenn",
  email: "maewenn@gmail.com",
  availability: true,
  password: "123456",
  phone: "0102030408",
  area: "Communication",
  upvote: 10,
  location: "Marseille",
  diploma: "Le Wagon 2023",
  photo: "Maeween.jpg",
  description: "As the director of a coding school, I continue to work on various web missions. I support businesses and am available in the coming weeks for new adventures.",
  github_link: "https://github.com/will-keirs",
  linkedin_link: "https://fr.linkedin.com/in/lorenzo-lara-331a9972",
  website_link: "https://lorenzolara.myportfolio.com/",
  twitter_link: "https://lorenzolara.myportfolio.com/",
  facebook_link: "https://lorenzolara.myportfolio.com/",
  insta_link: "https://lorenzolara.myportfolio.com/"
)
dev4.save!

dev5 = Dev.new(
  name: "Baptiste",
  email: "baptiste@gmail.com",
  availability: false,
  password: "123456",
  phone: "0102030405",
  area: "Archeology",
  upvote: 10,
  location: "Marseille",
  diploma: "Le Wagon 2023",
  photo: "Baptiste.jpg",
  description: "Passionate junior web developer who prioritizes collaboration and adaptability. I'm a video game and manga enthusiast.",
  github_link: "https://github.com/will-keirs",
  linkedin_link: "https://fr.linkedin.com/in/lorenzo-lara-331a9972",
  website_link: "https://lorenzolara.myportfolio.com/",
  twitter_link: "https://lorenzolara.myportfolio.com/",
  facebook_link: "https://lorenzolara.myportfolio.com/",
  insta_link: "https://lorenzolara.myportfolio.com/"
)
dev5.save!
dev6 = Dev.new(
  name: "Flavien",
  email: "flavien@gmail.com",
  availability: true,
  password: "123456",
  phone: "0102030406",
  area: "Communication,",
  upvote: 45,
  location: "Marseille",
  diploma: "Le Wagon 2023",
  photo: "Flavien.png",
  description: "Junior web developer from Mexico, determined to provide innovative solutions. Strong time management and organizational skills. Outside of work, I'm a passionate cook and graphic designer.",
  github_link: "https://github.com/will-keirs",
  linkedin_link: "https://fr.linkedin.com/in/lorenzo-lara-331a9972",
  website_link: "https://lorenzolara.myportfolio.com/",
  twitter_link: "https://lorenzolara.myportfolio.com/",
  facebook_link: "https://lorenzolara.myportfolio.com/",
  insta_link: "https://lorenzolara.myportfolio.com/"
)
dev6.save!
dev7 = Dev.new(
  name: "Jean-Gui",
  email: "jean-gui@gmail.com",
  availability: false,
  password: "123456",
  phone: "0102030406",
  area: "Cookbooks",
  upvote: 12,
  location: "Marseille",
  diploma: "Le Wagon 2023",
  photo: "JeanGuillaume.jpg",
  description: "Passionate junior web developer who values creativity, communication, and continuous learning. Outside of coding, I'm a marketer and video enthusiast.",
  github_link: "https://github.com/will-keirs",
  linkedin_link: "https://fr.linkedin.com/in/lorenzo-lara-331a9972",
  website_link: "https://lorenzolara.myportfolio.com/",
  twitter_link: "https://lorenzolara.myportfolio.com/",
  facebook_link: "https://lorenzolara.myportfolio.com/",
  insta_link: "https://lorenzolara.myportfolio.com/"
)
dev7.save!
dev8 = Dev.new(
  name: "Jonathan",
  email: "jonathan@gmail.com",
  availability: true,
  password: "123456",
  phone: "0102030406",
  area: "Bootstrap",
  upvote: 5,
  location: "Nice",
  diploma: "Le Wagon 2023",
  photo: "Jonathan.jpg",
  description: "Young web developer with a positive approach and problem-solving skills. I'm also a mathematics teacher, which is an asset for coding.",
  github_link: "https://github.com/will-keirs",
  linkedin_link: "https://fr.linkedin.com/in/lorenzo-lara-331a9972",
  website_link: "https://lorenzolara.myportfolio.com/",
  twitter_link: "https://lorenzolara.myportfolio.com/",
  facebook_link: "https://lorenzolara.myportfolio.com/",
  insta_link: "https://lorenzolara.myportfolio.com/"
)
dev8.save!
dev9 = Dev.new(
  name: "Loris",
  email: "loris@gmail.com",
  availability: true,
  password: "123456",
  phone: "0102030406",
  area: "OOP lover",
  upvote: 22,
  location: "Marseille",
  diploma: "Le Wagon 2023",
  photo: "Loris.jpg",
  description: "Junior web developer focused on problem-solving, with adaptability and teamwork skills. Outside the office, I'm an avid hiker.",
  github_link: "https://github.com/will-keirs",
  linkedin_link: "https://fr.linkedin.com/in/lorenzo-lara-331a9972",
  website_link: "https://lorenzolara.myportfolio.com/",
  twitter_link: "https://lorenzolara.myportfolio.com/",
  facebook_link: "https://lorenzolara.myportfolio.com/",
  insta_link: "https://lorenzolara.myportfolio.com/"
)
dev9.save!

dev10 = Dev.new(
  name: "None",
  email: "none@gmail.com",
  availability: false,
  password: "123456",
  phone: "0102030406",
  area: "Carrément",
  upvote: 14,
  location: "Marseille",
  diploma: "Le Wagon 2023",
  photo: "None.jpg",
  description: "I've specialized in the healthcare field as I also have activities in this domain. I'm looking for part-time missions and eagerly awaiting your requests.",
  github_link: "https://github.com/will-keirs",
  linkedin_link: "https://fr.linkedin.com/in/lorenzo-lara-331a9972",
  website_link: "https://lorenzolara.myportfolio.com/",
  twitter_link: "https://lorenzolara.myportfolio.com/",
  facebook_link: "https://lorenzolara.myportfolio.com/",
  insta_link: "https://lorenzolara.myportfolio.com/"
)
dev10.save!

dev11 = Dev.new(
  name: "Theo",
  email: "theo@gmail.com",
  availability: true,
  password: "123456",
  phone: "0102030406",
  area: "Hair-twisting",
  upvote: 7,
  location: "Marseille",
  diploma: "Le Wagon 2023",
  photo: "Theo.jpg",
  description:"Determined junior web developer committed to creating exceptional user experiences. I'm also specialized in communication and marketing through my web agency.",
  github_link: "https://github.com/will-keirs",
  linkedin_link: "https://fr.linkedin.com/in/lorenzo-lara-331a9972",
  website_link: "https://lorenzolara.myportfolio.com/",
  twitter_link: "https://lorenzolara.myportfolio.com/",
  facebook_link: "https://lorenzolara.myportfolio.com/",
  insta_link: "https://lorenzolara.myportfolio.com/"
)
dev11.save!

dev12 = Dev.new(
  name: "Yann",
  email: "yann@gmail.com",
  availability: true,
  password: "123456",
  phone: "0102030406",
  area: "Biology",
  upvote: 63,
  location: "Marseille",
  diploma: "Le Wagon 2023",
  photo: "Yann.jpg",
  description: "Junior web developer with a strong work ethic and a team player mindset. I'm passionate about the healthcare industry.",
  github_link: "https://github.com/will-keirs",
  linkedin_link: "https://fr.linkedin.com/in/lorenzo-lara-331a9972",
  website_link: "https://lorenzolara.myportfolio.com/",
  twitter_link: "https://lorenzolara.myportfolio.com/",
  facebook_link: "https://lorenzolara.myportfolio.com/",
  insta_link: "https://lorenzolara.myportfolio.com/"
)
dev12.save!

dev13 = Dev.new(
  name: "Nais",
  email: "nais@gmail.com",
  availability: false,

  password: "123456",
  phone: "0102030406",
  area: "Dance",
  upvote: 14,
  location: "Communication",
  diploma: "Le Wagon 2023",
  photo: "Nais.jpg",
  description: "Happy to integrate the training and grateful to have helped me to concretize my project by implementing my request
  I like coder and when I'm not coding I dance and I mix",
  github_link: "https://github.com/will-keirs",
  linkedin_link: "https://fr.linkedin.com/in/lorenzo-lara-331a9972",
  website_link: "https://lorenzolara.myportfolio.com/",
  twitter_link: "https://lorenzolara.myportfolio.com/",
  facebook_link: "https://lorenzolara.myportfolio.com/",
  insta_link: "https://lorenzolara.myportfolio.com/"
)
dev13.save!
match = Match.new(
  comment: "Amazing work",
  dev: dev7,
  mission: mission1,
  accepted: true
)
match.save!
match1 = Match.new(
  comment: "the best ever",
  dev: dev8,
  mission: mission1,
  accepted: true
)
match1.save!
match2 = Match.new(
  comment: "nobody moves like this",
  dev: dev9,
  mission: mission1,
  accepted: true
)
match2.save!
match3 = Match.new(
  comment: "perfecto",
  dev: dev10,
  mission: mission1,
  accepted: true
)
match3.save!

match4 = Match.new(
  comment: "Amazing",
  dev: dev4,
  mission: mission1,
  accepted: true
)
match4.save!
match5 = Match.new(
  comment: "the best ever",
  dev: dev5,
  mission: mission1,
  accepted: true
)
match5.save!
match6 = Match.new(
  comment: "nobody moves like this",
  dev: dev6,
  mission: mission1,
  accepted: true
)
match6.save!
match7 = Match.new(
  comment: "perfecto",
  dev: dev11,
  mission: mission1,
  accepted: true
)
match7.save!
match8 = Match.new(
  comment: "What an experience!",
  dev: dev13,
  mission: mission2,
  accepted: true
)
match8.save!
match9 = Match.new(
  comment: "Incredibly talented!",
  dev: dev2,
  mission: mission2,
  accepted: true
)
match9.save!
match10 = Match.new(
  comment: "I guess wrong area...",
  dev: dev13,
  mission: mission2,
  accepted: true
)
match10.save!
match11 = Match.new(
  comment: "Can't stop eating",
  dev: dev6,
  mission: mission2,
  accepted: true
)
match11.save!
match12 = Match.new(
  comment: "Dropped the db , REDFLAG",
  dev: dev8,
  mission: mission2,
  accepted: true
)
match12.save!

l = Language.create!(langtype: "HTML-5", langicon: "01HTML.svg")
l1 = Language.create!(langtype: "CSS-3", langicon: "02CSS.svg")
l2 = Language.create!(langtype: "Javascript", langicon: "03JS.svg")
l3 = Language.create!(langtype: "Ruby", langicon: "04Ruby.svg")
l4 = Language.create!(langtype: "Rails", langicon: "05Rails.svg")
l5 = Language.create!(langtype: "Typescript", langicon: "06Typescript.svg")
l6 = Language.create!(langtype: "React", langicon: "07React.svg")
l7 = Language.create!(langtype: "Objective C", langicon: "08Objective-c.svg")
l8 = Language.create!(langtype: "C++", langicon: "09CPlusPlus.svg")
l9 = Language.create!(langtype: "mySQL", langicon: "10mysql.svg")
l10 = Language.create!(langtype: "PHP", langicon: "11PHP.svg")
l11 = Language.create!(langtype: "Python", langicon: "12Python.svg")
l12 = Language.create!(langtype: "Java", langicon: "13Java.svg")
l13 = Language.create!(langtype: "Node JS", langicon: "14Node JS.svg")

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

Devlangmission.create!(dev: dev1, language: l)
Devlangmission.create!(dev: dev2, language: l3)
Devlangmission.create!(dev: dev3, language: l4)
Devlangmission.create!(dev: dev4, language: l)
Devlangmission.create!(dev: dev1, language: l8)
Devlangmission.create!(dev: dev2, language: l5)
Devlangmission.create!(dev: dev3, language: l11)
Devlangmission.create!(dev: dev4, language: l12)
Devlangmission.create!(dev: dev1, language: l11)
Devlangmission.create!(dev: dev2, language: l4)
Devlangmission.create!(dev: dev3, language: l3)
Devlangmission.create!(dev: dev4, language: l8)

Devlangmission.create!(dev: dev5, language: l)
Devlangmission.create!(dev: dev6, language: l3)
Devlangmission.create!(dev: dev7, language: l3)
Devlangmission.create!(dev: dev8, language: l)
Devlangmission.create!(dev: dev9, language: l3)
Devlangmission.create!(dev: dev10, language: l5)
Devlangmission.create!(dev: dev11, language: l11)
Devlangmission.create!(dev: dev12, language: l10)
Devlangmission.create!(dev: dev5, language: l8)
Devlangmission.create!(dev: dev6, language: l10)
Devlangmission.create!(dev: dev7, language: l4)
Devlangmission.create!(dev: dev8, language: l3)
Devlangmission.create!(dev: dev9, language: l4)
Devlangmission.create!(dev: dev10, language: l)
Devlangmission.create!(dev: dev11, language: l12)
Devlangmission.create!(dev: dev12, language: l3)

Devlangmission.create!(language: l4, mission: mission1)
Devlangmission.create!(language: l2, mission: mission1)
Devlangmission.create!(language: l7, mission: mission2)
Devlangmission.create!(language: l1, mission: mission1)
Devlangmission.create!(language: l9, mission: mission2)
Devlangmission.create!(language: l3, mission: mission2)
Devlangmission.create!(language: l7, mission: mission1)

Devsoftmission.create!(dev: dev4, soft_skill: sk8)
Devsoftmission.create!(dev: dev2, soft_skill: sk5)
Devsoftmission.create!(dev: dev3, soft_skill: sk11)
Devsoftmission.create!(dev: dev3, soft_skill: sk10)
Devsoftmission.create!(dev: dev4, soft_skill: sk11)
Devsoftmission.create!(dev: dev1, soft_skill: sk12)
Devsoftmission.create!(dev: dev2, soft_skill: sk13)
Devsoftmission.create!(dev: dev3, soft_skill: sk)
Devsoftmission.create!(dev: dev3, soft_skill: sk5)
Devsoftmission.create!(dev: dev1, soft_skill: sk8)
Devsoftmission.create!(dev: dev2, soft_skill: sk8)
Devsoftmission.create!(dev: dev4, soft_skill: sk10)
Devsoftmission.create!(dev: dev1, soft_skill: sk11)
Devsoftmission.create!(dev: dev2, soft_skill: sk12)
Devsoftmission.create!(dev: dev3, soft_skill: sk13)
Devsoftmission.create!(dev: dev4, soft_skill: sk)

Devsoftmission.create!(dev: dev5, soft_skill: sk)
Devsoftmission.create!(dev: dev6, soft_skill: sk3)
Devsoftmission.create!(dev: dev7, soft_skill: sk3)
Devsoftmission.create!(dev: dev8, soft_skill: sk10)
Devsoftmission.create!(dev: dev9, soft_skill: sk)
Devsoftmission.create!(dev: dev10, soft_skill: sk5)
Devsoftmission.create!(dev: dev11, soft_skill: sk10)
Devsoftmission.create!(dev: dev12, soft_skill: sk11)
Devsoftmission.create!(dev: dev5, soft_skill: sk11)
Devsoftmission.create!(dev: dev6, soft_skill: sk5)
Devsoftmission.create!(dev: dev7, soft_skill: sk5)
Devsoftmission.create!(dev: dev8, soft_skill: sk5)
Devsoftmission.create!(dev: dev9, soft_skill: sk11)
Devsoftmission.create!(dev: dev10, soft_skill: sk8)
Devsoftmission.create!(dev: dev11, soft_skill: sk8)
Devsoftmission.create!(dev: dev12, soft_skill: sk)
Devsoftmission.create!(dev: dev5, soft_skill: sk3)
Devsoftmission.create!(dev: dev6, soft_skill: sk10)
Devsoftmission.create!(dev: dev7, soft_skill: sk13)
Devsoftmission.create!(dev: dev8, soft_skill: sk10)
Devsoftmission.create!(dev: dev9, soft_skill: sk3)
Devsoftmission.create!(dev: dev10, soft_skill: sk)
Devsoftmission.create!(dev: dev11, soft_skill: sk3)
Devsoftmission.create!(dev: dev12, soft_skill: sk10)

Devsoftmission.create!(soft_skill: sk1, mission: mission1)
Devsoftmission.create!(soft_skill: sk2, mission: mission1)
Devsoftmission.create!(soft_skill: sk3, mission: mission2)
Devsoftmission.create!(soft_skill: sk4, mission: mission2)
Devsoftmission.create!(soft_skill: sk, mission: mission1)
Devsoftmission.create!(soft_skill: sk5, mission: mission1)
Devsoftmission.create!(soft_skill: sk6, mission: mission2)
Devsoftmission.create!(soft_skill: sk7, mission: mission2)
Devsoftmission.create!(soft_skill: sk8, mission: mission1)
Devsoftmission.create!(soft_skill: sk9, mission: mission1)
Devsoftmission.create!(soft_skill: sk10, mission: mission2)
Devsoftmission.create!(soft_skill: sk11, mission: mission2)
Devsoftmission.create!(soft_skill: sk12, mission: mission1)
Devsoftmission.create!(soft_skill: sk13, mission: mission1)
