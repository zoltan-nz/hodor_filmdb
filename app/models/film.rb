class Film < ActiveRecord::Base
  has_many :roleships#, inverse_of: :film
  has_many :participants, through: :roleships
  has_many :roles, through: :roleships

  accepts_nested_attributes_for :roleships

  def writers=(participant)
    @writer_role = Role.find(1)
    self.roles << @writer_role
    self.participants << participant
  end

end
