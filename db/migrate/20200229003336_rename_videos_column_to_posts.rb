class RenameVideosColumnToPosts < ActiveRecord::Migration[5.2]
  def change
  	def change
    rename_column :posts, :videos, :video
  end
  end
end
