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
  email: "johnny@johnny.com",
  availability: false,
  password: "123456",
  phone: "0102030405",
  area: "agriculture",
  upvote: 10,
  location: "Marseille",
  diploma: "Le Wagon 2023",
  photo: "https://loremflickr.com/320/240?random=13",
  description: "J'aime coder pour la science, c'est mon dada! J'ai la chance d'avoir travailler sur de nombreuses missions et je suis prêt à m'occuper de la votre. ",
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
  email: "lucy@lucy.com",
  availability: true,
  password: "123456",
  phone: "0102030406",
  area: "energy",
  upvote: 45,
  location: "Lyon",
  diploma: "Le Wagon 2020",
  photo: "https://loremflickr.com/320/240?random=12",
  description: "Je suis teacher au Wagon depuis plusieurs années et j'ai travaillé sur de nombreux projets ambitieux. Je cherche de nouvelles opportunités.",
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
  email: "emily@emily.com",
  availability: false,
  password: "123456",
  phone: "0102030407",
  area: "healthcare",
  upvote: 4,
  location: "Marseille",
  diploma: "Le Wagon 2018",
  photo: "https://loremflickr.com/320/240?random=11",
  description: "Dylane, développeur depuis plusieurs années. J'aime relever des challenges complexes et lancer des projets fous. ",
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
  email: "anthony@anthony.com",
  availability: true,
  password: "123456",
  phone: "0102030408",
  area: "communication",
  upvote: 10,
  location: "Paris",
  diploma: "Le Wagon 2019",
  photo: "https://loremflickr.com/320/240?random=10",
  description: "Directrice d'une école de développement, je continue de travailler sur de nombreuses missions web. J'accompagne des entreprises et je suis disponible dans les prochaines semaines pour de nouvelles aventures.",
  github_link: "https://github.com/will-keirs",
  linkedin_link: "https://fr.linkedin.com/in/lorenzo-lara-331a9972",
  website_link: "https://lorenzolara.myportfolio.com/",
  twitter_link: "https://lorenzolara.myportfolio.com/",
  facebook_link: "https://lorenzolara.myportfolio.com/",
  insta_link: "https://lorenzolara.myportfolio.com/"
)
dev4.save!

dev5 = Dev.new(
  name: "Clara",
  email: "clara@clara.com",
  availability: false,
  password: "123456",
  phone: "0102030405",
  area: "Healthcare",
  upvote: 10,
  location: "Marseille",
  diploma: "Le Wagon 2023",
  photo: "https://loremflickr.com/320/240?random=9",
  description: "Coucou à tous, je suis super impatiente de commencer cette formation avec vous tous !
  Je suis Podologue depuis deux ans et participe à cette formation afin de diversifier mon activité. Ce sera, j'en suis sure, l'occasion d'acquérir des tas de connaissances et de faire de super rencontres :D",
  github_link: "https://github.com/will-keirs",
  linkedin_link: "https://fr.linkedin.com/in/lorenzo-lara-331a9972",
  website_link: "https://lorenzolara.myportfolio.com/",
  twitter_link: "https://lorenzolara.myportfolio.com/",
  facebook_link: "https://lorenzolara.myportfolio.com/",
  insta_link: "https://lorenzolara.myportfolio.com/"
)
dev5.save!
dev6 = Dev.new(
  name: "Thomas",
  email: "thomas@lucy.com",
  availability: true,
  password: "123456",
  phone: "0102030406",
  area: "Energy",
  upvote: 45,
  location: "Marseille",
  diploma: "Le Wagon 2023",
  photo: "https://loremflickr.com/320/240?random=8",
  description: "Bonjour, j'ai 23 ans j'étais parti pour être enseignant de mathématiques mais les expériences du métiers m'en ont quelque peu dissuadé. Mon cursus d'étude m'ayant permis de découvrir la programmation et de m'y donner goût j'ai décidé de reconvertir dans une voie plus exigeante, plus pénible mais beaucoup plus intéressante",
  github_link: "https://github.com/will-keirs",
  linkedin_link: "https://fr.linkedin.com/in/lorenzo-lara-331a9972",
  website_link: "https://lorenzolara.myportfolio.com/",
  twitter_link: "https://lorenzolara.myportfolio.com/",
  facebook_link: "https://lorenzolara.myportfolio.com/",
  insta_link: "https://lorenzolara.myportfolio.com/"
)
dev6.save!
dev7 = Dev.new(
  name: "Lorenzo",
  email: "thoas@lucy.com",
  availability: false,
  password: "123456",
  phone: "0102030406",
  area: "Graphism",
  upvote: 12,
  location: "Marseille",
  diploma: "Le Wagon 2023",
  photo: "https://loremflickr.com/320/240?random=7",
  description: "Bonjour! Je suis Lorenzo, Mexicain, graphiste de base, et passioné de musique, films, illustration, BD et nouvelles technologies. Depuis beaucoup d'années j'ai voulu prendre une formation sur le design web et le developpement. c'est jusqu'aujourd'hui que je peux et je suis très content d' être au Wagon.",
  github_link: "https://github.com/will-keirs",
  linkedin_link: "https://fr.linkedin.com/in/lorenzo-lara-331a9972",
  website_link: "https://lorenzolara.myportfolio.com/",
  twitter_link: "https://lorenzolara.myportfolio.com/",
  facebook_link: "https://lorenzolara.myportfolio.com/",
  insta_link: "https://lorenzolara.myportfolio.com/"
)
dev7.save!
dev8 = Dev.new(
  name: "Rémy",
  email: "thoma@lucy.com",
  availability: true,
  password: "123456",
  phone: "0102030406",
  area: "Auto",
  upvote: 5,
  location: "Marseille",
  diploma: "Le Wagon 2023",
  photo: "https://loremflickr.com/320/240?random=6",
  description: "Dans le marketing web depuis 2003, j'ai toujours secrètement rêvé d'apprendre le développement. Envie de voir autre chose et de mieux comprendre le code.",
  github_link: "https://github.com/will-keirs",
  linkedin_link: "https://fr.linkedin.com/in/lorenzo-lara-331a9972",
  website_link: "https://lorenzolara.myportfolio.com/",
  twitter_link: "https://lorenzolara.myportfolio.com/",
  facebook_link: "https://lorenzolara.myportfolio.com/",
  insta_link: "https://lorenzolara.myportfolio.com/"
)
dev8.save!
dev9 = Dev.new(
  name: "Alice",
  email: "tmas@lucy.com",
  availability: true,
  password: "123456",
  phone: "0102030406",
  area: "Travel",
  upvote: 22,
  location: "Marseille",
  diploma: "Le Wagon 2023",
  photo: "https://loremflickr.com/320/240?random=5",
  description: "Bonjour, je suis Alice. Après avoir travaillé pendant 5 ans dans une agence de marketing direct à Paris en tant que chef de projet CRM, je souhaite désormais me spécialiser dans des projets plus techniques en étant davantage sur la conception de site internet et d'application mobile. Je souhaite dans un premier temps continuer dans la gestion de projet puis à terme monter en compétence sur un poste de développeuse web front end.",
  github_link: "https://github.com/will-keirs",
  linkedin_link: "https://fr.linkedin.com/in/lorenzo-lara-331a9972",
  website_link: "https://lorenzolara.myportfolio.com/",
  twitter_link: "https://lorenzolara.myportfolio.com/",
  facebook_link: "https://lorenzolara.myportfolio.com/",
  insta_link: "https://lorenzolara.myportfolio.com/"
)
dev9.save!

dev10 = Dev.new(
  name: "Adam",
  email: "ths@lucy.com",
  availability: false,
  password: "123456",
  phone: "0102030406",
  area: "Football",
  upvote: 14,
  location: "Marseille",
  diploma: "Le Wagon 2023",
  photo: "https://loremflickr.com/320/240?random=4",
  description: "J'ai longtemps travaillé dans l'hôtellerie et j'ai décidé de me lancer dans le coding par passion, dans le but de devenir un pro et travailler à travers le monde. J'aime l'idée de travailler en bootcamp afin d'apprendre de manière intensive, c'est pourquoi j'ai rejoint le Wagon",
  github_link: "https://github.com/will-keirs",
  linkedin_link: "https://fr.linkedin.com/in/lorenzo-lara-331a9972",
  website_link: "https://lorenzolara.myportfolio.com/",
  twitter_link: "https://lorenzolara.myportfolio.com/",
  facebook_link: "https://lorenzolara.myportfolio.com/",
  insta_link: "https://lorenzolara.myportfolio.com/"
)
dev10.save!

dev11 = Dev.new(
  name: "Anais",
  email: "ts@lucy.com",
  availability: true,
  password: "123456",
  phone: "0102030406",
  area: "Communication",
  upvote: 7,
  location: "Marseille",
  diploma: "Le Wagon 2023",
  photo: "https://loremflickr.com/320/240?random=3",
  description: "Bonjour,
  Je m'appelle Anaïs, j'ai 24 ans et je viens de finir mes études en école de commerce. J'ai créé mon agence de communication il y a 3 ans et j'aimerais m'orienter vers l'IA sur un nouveau projet pour lequel j'ai besoin de bases en coding informatique.
  Alors me voilà !",
  github_link: "https://github.com/will-keirs",
  linkedin_link: "https://fr.linkedin.com/in/lorenzo-lara-331a9972",
  website_link: "https://lorenzolara.myportfolio.com/",
  twitter_link: "https://lorenzolara.myportfolio.com/",
  facebook_link: "https://lorenzolara.myportfolio.com/",
  insta_link: "https://lorenzolara.myportfolio.com/"
)
dev11.save!

dev12 = Dev.new(
  name: "Emma",
  email: "themmaas@lucy.com",
  availability: true,
  password: "123456",
  phone: "0102030406",
  area: "Biology",
  upvote: 63,
  location: "Marseille",
  diploma: "Le Wagon 2023",
  photo: "https://loremflickr.com/320/240?random=2",
  description: "Provenant d'un master biologie-santé avec peu de débouchés, j'ai décidé de me réorienter vers le développement web pour faire un métier qui offre plus de liberté, mais qui permet de travailler dans un domaine où la réflexion et la créativité sont présentes.",
  github_link: "https://github.com/will-keirs",
  linkedin_link: "https://fr.linkedin.com/in/lorenzo-lara-331a9972",
  website_link: "https://lorenzolara.myportfolio.com/",
  twitter_link: "https://lorenzolara.myportfolio.com/",
  facebook_link: "https://lorenzolara.myportfolio.com/",
  insta_link: "https://lorenzolara.myportfolio.com/"
)
dev12.save!

dev13 = Dev.new(
  name: "Halima",
  email: "Halima@lucy.com",
  availability: false,

  password: "123456",
  phone: "0102030406",
  area: "Dance",
  upvote: 14,
  location: "Marseille",
  diploma: "Le Wagon 2023",
  photo: "https://loremflickr.com/320/240?random=1",
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
  comment: "Amazing",
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
Devlangmission.create!(dev: dev2, language: l2)
Devlangmission.create!(dev: dev3, language: l5)
Devlangmission.create!(dev: dev4, language: l)
Devlangmission.create!(dev: dev1, language: l4)
Devlangmission.create!(dev: dev2, language: l5)
Devlangmission.create!(dev: dev3, language: l6)
Devlangmission.create!(dev: dev4, language: l9)
Devlangmission.create!(dev: dev1, language: l8)
Devlangmission.create!(dev: dev2, language: l10)
Devlangmission.create!(dev: dev3, language: l10)
Devlangmission.create!(dev: dev4, language: l4)
Devlangmission.create!(dev: dev1, language: l2)
Devlangmission.create!(dev: dev3, language: l7)
Devlangmission.create!(dev: dev1, language: l1)
Devlangmission.create!(dev: dev2, language: l9)
Devlangmission.create!(dev: dev3, language: l3)
Devlangmission.create!(dev: dev4, language: l7)

Devlangmission.create!(dev: dev5, language: l2)
Devlangmission.create!(dev: dev6, language: l3)
Devlangmission.create!(dev: dev7, language: l6)
Devlangmission.create!(dev: dev8, language: l)
Devlangmission.create!(dev: dev9, language: l5)
Devlangmission.create!(dev: dev10, language: l5)
Devlangmission.create!(dev: dev11, language: l6)
Devlangmission.create!(dev: dev12, language: l7)
Devlangmission.create!(dev: dev13, language: l8)
Devlangmission.create!(dev: dev5, language: l9)
Devlangmission.create!(dev: dev6, language: l10)
Devlangmission.create!(dev: dev7, language: l4)
Devlangmission.create!(dev: dev8, language: l2)
Devlangmission.create!(dev: dev9, language: l7)
Devlangmission.create!(dev: dev10, language: l1)
Devlangmission.create!(dev: dev11, language: l2)
Devlangmission.create!(dev: dev12, language: l3)
Devlangmission.create!(dev: dev13, language: l)

Devlangmission.create!(language: l4, mission: mission1)
Devlangmission.create!(language: l2, mission: mission1)
Devlangmission.create!(language: l7, mission: mission2)
Devlangmission.create!(language: l1, mission: mission1)
Devlangmission.create!(language: l9, mission: mission2)
Devlangmission.create!(language: l3, mission: mission2)
Devlangmission.create!(language: l7, mission: mission1)


Devsoftmission.create!(dev: dev1, soft_skill: sk1)
Devsoftmission.create!(dev: dev2, soft_skill: sk2)
Devsoftmission.create!(dev: dev3, soft_skill: sk3)
Devsoftmission.create!(dev: dev4, soft_skill: sk4)
Devsoftmission.create!(dev: dev1, soft_skill: sk)
Devsoftmission.create!(dev: dev2, soft_skill: sk5)
Devsoftmission.create!(dev: dev3, soft_skill: sk6)
Devsoftmission.create!(dev: dev4, soft_skill: sk7)
Devsoftmission.create!(dev: dev1, soft_skill: sk8)
Devsoftmission.create!(dev: dev2, soft_skill: sk9)
Devsoftmission.create!(dev: dev3, soft_skill: sk10)
Devsoftmission.create!(dev: dev4, soft_skill: sk11)
Devsoftmission.create!(dev: dev1, soft_skill: sk12)
Devsoftmission.create!(dev: dev2, soft_skill: sk13)
Devsoftmission.create!(dev: dev3, soft_skill: sk)
Devsoftmission.create!(dev: dev4, soft_skill: sk2)
Devsoftmission.create!(dev: dev1, soft_skill: sk3)
Devsoftmission.create!(dev: dev2, soft_skill: sk4)
Devsoftmission.create!(dev: dev3, soft_skill: sk5)
Devsoftmission.create!(dev: dev4, soft_skill: sk6)
Devsoftmission.create!(dev: dev1, soft_skill: sk7)
Devsoftmission.create!(dev: dev2, soft_skill: sk8)
Devsoftmission.create!(dev: dev3, soft_skill: sk9)
Devsoftmission.create!(dev: dev4, soft_skill: sk10)
Devsoftmission.create!(dev: dev1, soft_skill: sk11)
Devsoftmission.create!(dev: dev2, soft_skill: sk12)
Devsoftmission.create!(dev: dev3, soft_skill: sk13)
Devsoftmission.create!(dev: dev4, soft_skill: sk)

Devsoftmission.create!(dev: dev5, soft_skill: sk1)
Devsoftmission.create!(dev: dev6, soft_skill: sk2)
Devsoftmission.create!(dev: dev7, soft_skill: sk3)
Devsoftmission.create!(dev: dev8, soft_skill: sk4)
Devsoftmission.create!(dev: dev9, soft_skill: sk)
Devsoftmission.create!(dev: dev10, soft_skill: sk5)
Devsoftmission.create!(dev: dev11, soft_skill: sk6)
Devsoftmission.create!(dev: dev12, soft_skill: sk7)
Devsoftmission.create!(dev: dev13, soft_skill: sk8)
Devsoftmission.create!(dev: dev5, soft_skill: sk2)
Devsoftmission.create!(dev: dev6, soft_skill: sk3)
Devsoftmission.create!(dev: dev7, soft_skill: sk4)
Devsoftmission.create!(dev: dev8, soft_skill: sk5)
Devsoftmission.create!(dev: dev9, soft_skill: sk6)
Devsoftmission.create!(dev: dev10, soft_skill: sk7)
Devsoftmission.create!(dev: dev11, soft_skill: sk8)
Devsoftmission.create!(dev: dev12, soft_skill: sk2)
Devsoftmission.create!(dev: dev13, soft_skill: sk9)
Devsoftmission.create!(dev: dev5, soft_skill: sk3)
Devsoftmission.create!(dev: dev6, soft_skill: sk5)
Devsoftmission.create!(dev: dev7, soft_skill: sk9)
Devsoftmission.create!(dev: dev8, soft_skill: sk10)
Devsoftmission.create!(dev: dev9, soft_skill: sk3)
Devsoftmission.create!(dev: dev10, soft_skill: sk)
Devsoftmission.create!(dev: dev11, soft_skill: sk3)
Devsoftmission.create!(dev: dev12, soft_skill: sk10)
Devsoftmission.create!(dev: dev13, soft_skill: sk4)

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
