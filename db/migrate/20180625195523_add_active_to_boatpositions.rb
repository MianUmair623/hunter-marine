class AddActiveToBoatpositions < ActiveRecord::Migration
  def change
    add_column :boatpositions, :active, :boolean, default: true
  end
end
