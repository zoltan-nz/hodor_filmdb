class Film < ActiveRecord::Base
  has_many :roleships
  has_many :participants, through: :roleships
  has_many :roles, through: :roleships
end
