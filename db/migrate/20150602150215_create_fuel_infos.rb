class CreateFuelInfos < ActiveRecord::Migration
  def change
    create_table :fuel_infos do |t|
      t.string :price
      t.string :surcharge

      t.timestamps
    end
  end
end
