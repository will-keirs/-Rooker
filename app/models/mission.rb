class Mission < ApplicationRecord
  belongs_to :user
  has_many :matches
  has_many :devs, through: :matches
end
