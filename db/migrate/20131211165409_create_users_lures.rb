class CreateUsersLures < ActiveRecord::Migration
  def change
    create_table :users_lures do |t|
      t.integer :user_id
      t.integer :lure_id
      t.string :method
      t.string :comment
      t.string :priority
      t.string :color
      t.string :field
      t.string :photo
      
      t.timestamps
    end
  end
end
