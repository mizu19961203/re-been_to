class AddEmailToAdmins < ActiveRecord::Migration[5.2]
  def change
  	add_column :admins, :email, :string, default: "", null: false
  end
end
