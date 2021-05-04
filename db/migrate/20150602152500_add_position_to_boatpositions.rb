class AddPositionToBoatpositions < ActiveRecord::Migration
  def change
    add_column :boatpositions, :position, :integer
    add_index :boatpositions, :position
  end
end
