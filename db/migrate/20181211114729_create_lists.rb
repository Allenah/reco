class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :list_type
      t.string :name
      t.string :photo
      t.string :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
