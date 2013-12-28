class AddColumnsKanaToMakers < ActiveRecord::Migration
  def change
    add_column :makers, :name_kana, :string
  end
end
