class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :image
      t.string :description
      t.references :list, foreign_key: true

      t.timestamps
    end
  end
end
