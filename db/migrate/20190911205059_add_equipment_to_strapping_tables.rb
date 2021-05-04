class AddEquipmentToStrappingTables < ActiveRecord::Migration
  def change
    add_column :strapping_tables, :notes, :text
  end
end
