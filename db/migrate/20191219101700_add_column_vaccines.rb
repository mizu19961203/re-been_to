class AddColumnVaccines < ActiveRecord::Migration[5.2]
  def change
  	add_column :vaccines, :post_id, :integer
  end
end
