class RenameFoodInFoods < ActiveRecord::Migration
  def change
    rename_column :foods, :food, :name
  end
end
