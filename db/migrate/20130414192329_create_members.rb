class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :firstname
      t.string :mi
      t.string :lastname
      t.string :badgeno
      t.string :ssn

      t.timestamps
    end
  end
end
