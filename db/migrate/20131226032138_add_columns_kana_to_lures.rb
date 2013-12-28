class AddColumnsKanaToLures < ActiveRecord::Migration
  def change
    add_column :lures, :name_kana, :string
  end
end
