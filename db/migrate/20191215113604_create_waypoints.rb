class CreateWaypoints < ActiveRecord::Migration[5.2]
  def change
    create_table :waypoints do |t|
    	t.integer :route_id
    	t.integer :waypoint
    	t.float :poi_lat
    	t.float :poi_lng
    	t.datetime :created_at, null: false, default:'now'
      t.datetime :updated_at, null: false, default:'now'
      t.timestamps
    end
  end
end
