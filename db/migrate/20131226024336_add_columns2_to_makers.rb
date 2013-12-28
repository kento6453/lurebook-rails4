class AddColumns2ToMakers < ActiveRecord::Migration
  def change
    add_column :makers, :history, :text
    add_column :makers, :characteristic, :text
    add_column :makers, :establish, :integer
  end
end
