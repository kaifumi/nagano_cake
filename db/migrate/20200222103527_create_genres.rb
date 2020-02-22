class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|

    	t.string :type
    	t.boolean :sell_activated, :default => false
    	t.datetime :created_at
    	t.datetime :updated_at
      t.timestamps
    end
  end
end
