class CreateStrappingTables < ActiveRecord::Migration
  def change
    create_table :strapping_tables do |t|
      t.string :barge_number
      t.string :year_built
      t.string :shipyard
      t.attachment :strappings

      t.timestamps
    end
  end
end
