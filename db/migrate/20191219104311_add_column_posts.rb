class AddColumnPosts < ActiveRecord::Migration[5.2]
  def change
  	add_column :posts, :vaccine, :string
  end
end
