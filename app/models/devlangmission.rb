class Devlangmission < ApplicationRecord
  belongs_to :dev
  belongs_to :mission
  belongs_to :language
end
