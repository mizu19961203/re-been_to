class DropVisas < ActiveRecord::Migration[5.2]
  def change
  	drop_table :visas
  	remove_column :posts, :visa_id
  	add_column :posts, :visa, :integer
  end
end
