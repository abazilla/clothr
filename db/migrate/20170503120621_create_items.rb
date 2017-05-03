class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.float :price
      t.string :size
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
