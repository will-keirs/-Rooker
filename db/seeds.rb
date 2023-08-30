puts "creation m..."

match = Match.new(
  comment: "blablablablablablab",
  dev_id: 3,
  mission_id: 12,
  accepted: true
)
match.save!

match1 = Match.new(
  comment: "le cheval c est trop genial!",
  dev_id: 2,
  mission_id: 12,
  accepted: true
)
match1.save!

match2 = Match.new(
  comment: "nnnnnnnnnnnnnnnnnnnnab",
  dev_id: 1,
  mission_id: 12,
  accepted: true
)
match2.save!

match3 = Match.new(
  comment: "blavjhvyvutvjgcjtcjb",
  dev_id: 4,
  mission_id: 12,
  accepted: true
)
match3.save!
