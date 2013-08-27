# This migration comes from spree (originally 20130305143310)
class CreateStockMovements < ActiveRecord::Migration
  def change
    create_table :spree_stock_movements do |t|
      t.belongs_to :stock_item
      t.integer :quantity
      t.string :action

      t.timestamps
    end
    add_index :spree_stock_movements, :stock_item_id
  end
end
