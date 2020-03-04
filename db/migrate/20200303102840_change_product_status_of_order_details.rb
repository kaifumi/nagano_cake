class ChangeProductStatusOfOrderDetails < ActiveRecord::Migration[5.2]
  def change
      change_column :order_details, :product_status, :integer, :default => 0
  end
end
