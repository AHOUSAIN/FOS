class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.decimal :price
      t.boolean :available
      t.integer :cart_id

      t.timestamps
    end
  end
end
