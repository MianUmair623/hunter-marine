class CreateEmploymentEducationRecords < ActiveRecord::Migration
  def change
    create_table :employment_education_records do |t|
      t.references :employment_application

      t.string :school_name
      t.string :address
      t.string :years
      t.string :diploma
      
      t.timestamps
    end
  end
end
