class Devsoftmission < ApplicationRecord
  belongs_to :dev
  belongs_to :mission
  belongs_to :soft_skill
end
