class PopulateBoatpositionsPositionData < ActiveRecord::Migration
  def up
    execute "SET @x = 0"
    execute "UPDATE boatpositions SET position = (@x:=@x+1) ORDER BY id"
  end
  def down
    execute "UPDATE boatpositions SET position = NULL"
  end
end
