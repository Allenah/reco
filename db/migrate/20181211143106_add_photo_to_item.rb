class AddPhotoToItem < ActiveRecord::Migration[5.2]
  def change
    rename_column :items, :image, :photo
  end
end
