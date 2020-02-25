class RemoveUpdateAtFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :update_at, :datetime
  end
end
