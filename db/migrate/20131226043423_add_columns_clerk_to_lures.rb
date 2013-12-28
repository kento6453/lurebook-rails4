class AddColumnsClerkToLures < ActiveRecord::Migration
  def change
    add_column :lures, :created_by_id, :integer
    add_column :lures, :updated_by_id, :integer
  end
end
