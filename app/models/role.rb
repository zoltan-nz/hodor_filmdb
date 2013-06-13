class Role < ActiveRecord::Base
  has_many :roleships
  has_many :participant, through: :roleships
end
