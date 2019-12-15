class CreateRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :routes do |t|
    	t.integer :post_id
    	t.integer :route
    	t.float :ori_lat
    	t.float :ori_lng
    	t.float :dst_lat
    	t.float :dst_lng
    	t.datetime :created_at, null: false, default:'now'
      t.datetime :updated_at, null: false, default:'now'
      t.timestamps
    end
  end
end
