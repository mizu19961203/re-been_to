class RemoveAdminNameToAdmins < ActiveRecord::Migration[5.2]
  def change
  	remove_column :admins, :admin_name
  end
end
