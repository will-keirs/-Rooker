class SoftSkill < ApplicationRecord
  has_many :devsoftmissions
  has_many :devs, through: :devsoftmissions
  has_many :missions, through: :devsoftmissions
end
