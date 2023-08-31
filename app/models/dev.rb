class Dev < ApplicationRecord
  has_many :matches
  has_many :missions, through: :matches
  has_many :devlangmissions
  has_many :devsoftmissions
  has_many :languages, through: :devlangmissions
  has_many :soft_skills, through: :devsoftmissions

  attribute :diploma, :string
  attribute :availability, :boolean
end
