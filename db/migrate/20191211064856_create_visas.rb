class CreateVisas < ActiveRecord::Migration[5.2]
  def change
    create_table :visas do |t|
    	t.integer :visa, null: false
    	t.datetime :created_at, null: false, default:'now'
        t.datetime :updated_at, null: false, default:'now'

      t.timestamps
    end
  end
end
