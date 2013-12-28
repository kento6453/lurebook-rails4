class AddColumns2ToLures < ActiveRecord::Migration
  def change
    add_column :lures, :movie_url, :string
    add_column :lures, :action, :string
    add_column :lures, :std_hook, :interger
    add_column :lures, :range_top, :integer
    add_column :lures, :range_btm, :integer
    add_column :lures, :distance, :float
    add_column :lures, :history, :text
    add_column :lures, :characteristic, :text
    add_column :lures, :release_year, :integer
  end
end
