class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :location
      t.string :picture
      t.text :description
      t.integer :price_per_day
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
