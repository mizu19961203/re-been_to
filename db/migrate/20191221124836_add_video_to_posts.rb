class AddVideoToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :videos, :string
  end
end
