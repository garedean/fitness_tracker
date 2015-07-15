class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :food
      t.integer :calories
      #t.references :user, index: true, foreign_key: true
    end
  end
end
