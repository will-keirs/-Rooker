class Dev < ApplicationRecord
  has_many :matches
  has_many :missions, through: :matches
  enum language: [ :Javascript, :Ruby, :Python, :PHP, :HTML5 ]
  enum soft_skill: [ :Powerful, :Jesus, :Fatality, :KO, :Kameheamehaaaaaaaa ]

  attribute :diploma, :string
  attribute :availability, :boolean

end
