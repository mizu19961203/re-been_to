class AddOriplaceColumnToPosts < ActiveRecord::Migration[5.2]
  def change
  	add_column :posts, :ori_place, :string
    add_column :posts, :dst_place, :string
  end
end
