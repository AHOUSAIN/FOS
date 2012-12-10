class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.float :price
      t.boolean :available

      t.timestamps
    end
  end
end
