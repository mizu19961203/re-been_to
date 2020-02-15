class RenameAdminNameToAdmins < ActiveRecord::Migration[5.2]
  def change
  	rename_column :admins, :admin_email, :email
  	rename_column :admins, :admin_password, :password
  end
end
