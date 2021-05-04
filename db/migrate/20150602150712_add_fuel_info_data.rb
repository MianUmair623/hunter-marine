class AddFuelInfoData < ActiveRecord::Migration
  def up
    execute "INSERT INTO fuel_infos SET price = '$2.14', surcharge = '21%'"
  end
  def down
    execute "DELETE FROM fuel_infos"
  end
end
