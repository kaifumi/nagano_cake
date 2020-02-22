class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      
    	t.integer :genre_id
    	t.string :name
    	t.text :content
    	t.string :image_id
    	t.integer :price
    	t.boolean :selling_status, :default => false
    	t.datetime :created_at
    	t.datetime :update_at

      t.timestamps
    end
  end
end
