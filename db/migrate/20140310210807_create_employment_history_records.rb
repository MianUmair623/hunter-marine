class CreateEmploymentHistoryRecords < ActiveRecord::Migration
  def change
    create_table :employment_history_records do |t|
      t.references :employment_application

      t.string :name_of_employer
      t.string :phone
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :name_of_supervisor
      t.string :position_held
      t.string :job_duties
      t.string :date_of_employment
      t.string :thru
      t.string :reason_for_leaving

      t.timestamps
    end
  end
end
