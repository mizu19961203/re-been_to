class ChangeDatatypeNameOfPosts < ActiveRecord::Migration[5.2]
  def change
  	change_column :vaccines, :name, :string
  end
end
