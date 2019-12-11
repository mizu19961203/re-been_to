class CreateVaccines < ActiveRecord::Migration[5.2]
  def change
    create_table :vaccines do |t|
    	t.integer :vaccine
    	t.integer :sel_vac, null: false
    	t.datetime :created_at, null: false, default:'now'
        t.datetime :updated_at, null: false, default:'now'

      t.timestamps
    end
  end
end
