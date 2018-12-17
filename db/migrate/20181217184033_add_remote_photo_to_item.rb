class AddRemotePhotoToItem < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :remote_photo, :string
  end
end
