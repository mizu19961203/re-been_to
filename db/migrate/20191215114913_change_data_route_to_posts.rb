class ChangeDataRouteToPosts < ActiveRecord::Migration[5.2]
  def change
  	rename_column :posts, :route, :route_id
  	change_column :posts, :route_id, :integer
  end
end
