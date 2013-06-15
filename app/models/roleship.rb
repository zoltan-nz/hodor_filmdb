class Roleship < ActiveRecord::Base
  belongs_to :participant
  belongs_to :film
  belongs_to :role

  accepts_nested_attributes_for :participant

end
