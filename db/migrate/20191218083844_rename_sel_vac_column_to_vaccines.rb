class RenameSelVacColumnToVaccines < ActiveRecord::Migration[5.2]
  def change
  	rename_column :vaccines, :sel_vac, :name
  end
end
