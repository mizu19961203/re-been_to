class RemoveUserFromAdmins < ActiveRecord::Migration[5.2]
  def change
    remove_column :admins, :email, :string, default: "", null: false
  end
end