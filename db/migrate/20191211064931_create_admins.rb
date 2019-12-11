class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
    	t.string :admin_name, null: false
    	t.string :admin_email, null: false
    	t.string :admin_password, null: false
    	t.datetime :created_at, null: false, default:'now'
        t.datetime :updated_at, null: false, default:'now'


      t.timestamps
    end
  end
end
