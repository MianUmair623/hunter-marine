class CreateEmploymentReferences < ActiveRecord::Migration
  def change
    create_table :employment_references do |t|
      t.references :employment_application

      t.string :name
      t.string :number
      t.string :relationship
      
      t.timestamps
    end
  end
end
