class AddDeletedAtToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :deleted_at, :datetime
  end
end
