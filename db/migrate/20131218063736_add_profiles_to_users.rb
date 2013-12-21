class AddProfilesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :profile, :text
    add_column :users, :area, :string
  end
end
