class CreateOrderDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :order_details do |t|

    	t.integer :product_id
    	t.integer :order_id
    	t.integer :purchase_price
    	t.integer :amount
    	t.integer :product_status
    	t.datetime :created_at
    	t.datetime :updated_at

      t.timestamps
    end
  end
end
