class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
    	t.string :country
    	t.datetime :created_at, null: false, default:'now'
        t.datetime :updated_at, null: false, default:'now'

      t.timestamps
    end
  end
end
