class CreateRoleships < ActiveRecord::Migration
  def change
    create_table :roleships do |t|
      t.belongs_to :participant, index: true
      t.belongs_to :film, index: true
      t.belongs_to :role, index: true
      t.integer    :sort_order
      t.boolean    :is_owner

      t.timestamps
    end
  end
end
