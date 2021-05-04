class RemoveFuelFieldsFromBoatPositions < ActiveRecord::Migration
  def change
    remove_column :boatpositions, :fuel_price
    remove_column :boatpositions, :fuel_surcharge
  end
end
