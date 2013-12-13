class CreateLures < ActiveRecord::Migration
  def change
    create_table :lures do |t|
      t.string :name
      t.string :genre
      t.string :kind
      t.integer :maker_id
      t.integer :price
      t.float :weight
      t.string :buy_link

      t.timestamps
    end
  end
end
