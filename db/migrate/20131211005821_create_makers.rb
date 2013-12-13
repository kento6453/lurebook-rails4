class CreateMakers < ActiveRecord::Migration
  def change
    create_table :makers do |t|
      t.string :name
      t.string :web_url
      t.string :logo

      t.timestamps
    end
  end
end
