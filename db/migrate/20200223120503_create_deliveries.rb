class CreateDeliveries < ActiveRecord::Migration[5.2]
  def change
    create_table :deliveries do |t|

		t.integer :customer_id
		t.integer :order_id
		t.string :postal_code
		t.text :address
		t.string :receiver
		t.datetime :created_at
    	t.datetime :updated_at

      t.timestamps
    end
  end
end
