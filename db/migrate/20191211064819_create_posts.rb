class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
    	t.integer :user_id
    	t.integer :country_id
    	t.integer :visa_id
    	t.integer :vaccine_id
    	t.integer :comment_id
    	t.integer :tag_id
    	t.text :image_id
    	t.text :movie
    	t.string :memo
    	t.string :route
    	t.datetime :created_at, null: false, default:'now'
        t.datetime :updated_at, null: false, default:'now'

      t.timestamps
    end
  end
end
