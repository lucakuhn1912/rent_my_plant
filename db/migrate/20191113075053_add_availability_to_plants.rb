class AddAvailabilityToPlants < ActiveRecord::Migration[5.2]
  def change
    add_column :plants, :availability, :boolean
  end
end
