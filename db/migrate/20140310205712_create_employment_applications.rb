class CreateEmploymentApplications < ActiveRecord::Migration
  def change
    create_table :employment_applications do |t|
      t.string :position

      t.string :first_name
      t.string :middle_name
      t.string :last_name
      
      t.string :current_address
      t.string :apt_number
      t.string :city
      t.string :state
      t.string :zip

      t.string :home_phone
      t.string :cell_phone
      t.string :email

      t.boolean :authorized_to_work
      t.boolean :friends_at_hunter_marine

      t.string :friends
      t.string :begin_work

      t.boolean :drug_test
      t.string  :drug_test_dates

      t.boolean :marine_license
      t.boolean :drivers_license

      t.string :license_issuing_state
      t.string :license_expiration_date

      t.boolean :agree_to_background_check
      t.string  :background_check_agreement_date

      t.boolean :agree_to_drug_test
      t.string :drug_test_agreement_date

      t.boolean :agree_to_medical_release
      t.string :medical_release_agreement_date

      t.timestamps
    end
  end
end
