class AddFieldsToBoatPositions < ActiveRecord::Migration
  def change
    add_column :boatpositions, :fuel_price, :string
    add_column :boatpositions, :fuel_surcharge, :string
  end
end
