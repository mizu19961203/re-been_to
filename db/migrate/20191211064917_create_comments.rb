class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
    	t.integer :post_id, null: false
    	t.integer :user_id, null: false
    	t.string :comment
    	t.datetime :created_at, null: false, default:'now'
        t.datetime :updated_at, null: false, default:'now'


      t.timestamps
    end
  end
end
