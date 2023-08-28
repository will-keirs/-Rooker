class Match < ApplicationRecord
  belongs_to :dev
  belongs_to :mission
  has_many :devs
end
