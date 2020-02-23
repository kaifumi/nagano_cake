class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|

    	t.integer :customer_id
    	t.integer :payment_option
    	t.integer :transaction_status
    	t.integer :delivery_price, :default => 800
    	t.integer :total_price
    	t.string :postal_code
    	t.text :address
    	t.string :receiver
    	t.datetime :created_at
    	t.datetime :updated_at

      t.timestamps
    end
  end
end
