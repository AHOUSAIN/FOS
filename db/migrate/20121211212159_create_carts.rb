class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.string :email
      t.array :menu_items
      t.string :password_digest
      t.integer :customer_id

      t.timestamps
    end
  end
end
