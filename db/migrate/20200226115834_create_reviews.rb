class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.float :rate
      t.string :title
      t.text :content
      t.integer :product_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
