class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :location
      t.string :picture
      t.text :description
      t.integer :price_per_day
      t.references :owner, index: true, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
