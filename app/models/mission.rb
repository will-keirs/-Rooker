class Mission < ApplicationRecord
  belongs_to :user
  has_many :matches
  has_many :devs, through: :matches, source: :dev
  has_many :devlangmissions
  has_many :devsoftmissions
  has_many :langtypes
  has_many :languages, through: :devlangmissions
  has_many :soft_skills, through: :devsoftmissions
  validates :name, :area, :location, :description, presence: true
end
