class RenameAdminNameToAdmins < ActiveRecord::Migration[5.2]
  def change
  	remove_column :admins, :admin_email
  end
end
