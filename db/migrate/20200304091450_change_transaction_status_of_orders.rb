class ChangeTransactionStatusOfOrders < ActiveRecord::Migration[5.2]
  def change
    change_column :orders, :transaction_status, :integer, :default => 0
  end
end
