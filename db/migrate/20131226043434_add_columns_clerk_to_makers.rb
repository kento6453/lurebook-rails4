class AddColumnsClerkToMakers < ActiveRecord::Migration
  def change
    add_column :makers, :created_by_id, :integer
    add_column :makers, :updated_by_id, :integer
  end
end
