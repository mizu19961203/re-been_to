class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
    	t.string :tag, null: false, unique: true
    	t.datetime :created_at, null: false, default:'now'
        t.datetime :updated_at, null: false, default:'now'

      t.timestamps
    end
  end
end
