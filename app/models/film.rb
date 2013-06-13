class Film < ActiveRecord::Base
  has_many :roleships
  has_many :participants, through: :roleships
  has_many :roles, through: :roleships

  def writers

  end

  def writers=(participant)
    @writer_role = Role.find(1)
    self.roles << @writer_role
    self.participants << participant
  end

end
