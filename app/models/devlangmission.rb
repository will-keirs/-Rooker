class Devlangmission < ApplicationRecord
  belongs_to :dev, optional: true
  belongs_to :mission, optional: true
  belongs_to :language
end
