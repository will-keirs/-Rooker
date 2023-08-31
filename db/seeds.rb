puts "creation m..."

dev = Dev.create(name: "Lorenzo")
lang = Language.create(langtype: "PHP")

Devlangmission.create(dev: dev, language: lang)

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
#   soft_skill: ["teamwork", "stress control", "communication"],
#   language: ["Python", "HTML5"]
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
#   soft_skill: ["autonomy", "teamwork", "communication"],
#   language: ["Python", "HTML5", "Ruby", "Javascript"]
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
#   soft_skill: ["adaptative", "stress control", "organised"],
#   language: ["Ruby", "HTML5"]
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
#   soft_skill: ["reactivity", "adaptative"],
#   language: ["Python", "Javascript", "Ruby"]
# )
# dev.save!


# match = Match.new(
#   comment: "blablablablablablab",
#   dev_id: 3,
#   mission_id: 1,
#   accepted: true
# )
# match.save!

# match1 = Match.new(
#   comment: "le cheval c est trop genial!",
#   dev_id: 2,
#   mission_id: 1,
#   accepted: true
# )
# match1.save!

# match2 = Match.new(
#   comment: "nnnnnnnnnnnnnnnnnnnnab",
#   dev_id: 1,
#   mission_id: 2,
#   accepted: true
# )
# match2.save!

# match3 = Match.new(
#   comment: "blavjhvyvutvjgcjtcjb",
#   dev_id: 4,
#   mission_id: 2,
#   accepted: true
# )
# match3.save!
