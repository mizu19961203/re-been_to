class AddDepartureDateToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :depature_date, :date
    add_column :posts, :return_date, :date
  end
end
