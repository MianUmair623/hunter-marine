class CreateCareers < ActiveRecord::Migration
  def change
    create_table :careers do |t|
      t.string :title
      t.string :location
      t.text :description
      t.integer :position

      t.timestamps
    end
    add_index :careers, :position
  end
end
