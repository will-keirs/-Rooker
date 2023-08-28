class Dev < User
  has_many :matches
  has_many :missions, through: :matches
end
