class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      
    	t.integer :genre_id
    	t.string :name, :null
    	t.text :content
    	t.string :image_id, :null
    	t.intger :price, :null
    	t.boolean :selling_status
    	t.datetime :created_at
    	t.datetime :update_at

      t.timestamps
    end
  end
end
