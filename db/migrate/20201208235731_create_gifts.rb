class CreateGifts < ActiveRecord::Migration[6.0]
  def change
    create_table :gifts do |t|
      t.string :title
      t.string :url
      t.integer :price
      t.text :comments
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
