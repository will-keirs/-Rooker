class Language < ApplicationRecord
  has_many :devlangmissions
  has_many :devs, through: :devlangmissions
  has_many :missions, through: :devlangmissions
end
