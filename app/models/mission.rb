class Mission < ApplicationRecord
  belongs_to :user
  has_many :matches
  has_many :devs, through: :matches
  enum language: [ :Javascript, :Ruby, :Python, :PHP, :HTML5 ]
  enum soft_skill: [ :Powerful, :Jesus, :Fatality, :KO, :Kameheamehaaaaaaaa ]
end
