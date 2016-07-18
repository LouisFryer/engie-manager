class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :order_ID
      t.string :item_code
      t.string :item_description
      t.integer :quantity
      t.decimal :unit
      t.decimal :sub_total

      t.timestamps null: false
    end
  end
end
