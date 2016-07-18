class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :poNumber
      t.date :date
      t.integer :contactID
      t.decimal :amount,  :null => false, :default => 0
      t.integer :unitCount,  :null => false, :default => 1
      t.date :targetDate
      t.boolean :accepted, :null => false
      t.boolean :ready, :null => false
      t.boolean :dispatched, :null => false
      t.boolean :delivered, :null => false
      t.boolean :invoiced, :null => false
      t.integer :invoiceNumber, :null => false
      t.boolean :Paid, :null => false

      t.timestamps null: false
    end
  end
end
