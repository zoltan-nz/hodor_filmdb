class Role < ActiveRecord::Base
  has_many :roleships
  has_many :films, through: :roleships
end
