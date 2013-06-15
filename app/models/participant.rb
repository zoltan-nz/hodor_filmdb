class Participant < ActiveRecord::Base
  has_many :roleships
  has_many :films, inverse_of: :participant
end
