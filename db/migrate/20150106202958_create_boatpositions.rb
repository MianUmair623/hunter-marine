class CreateBoatpositions < ActiveRecord::Migration
  def change
    create_table :boatpositions do |t|

      t.string :boatname
      t.integer :mile_marker
      t.string :direction
      t.string :river
      t.string :delay
      t.string :turn
      t.string :charter

      t.timestamps
    end
  end
end
