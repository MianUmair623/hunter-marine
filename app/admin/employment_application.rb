ActiveAdmin.register EmploymentApplication do
  actions :show, :index

  scope :complete, default: true
  scope :incomplete

  filter :first_name
  filter :last_name
  filter :email

  index do
    column :id
    column :first_name
    column :middle_name
    column :last_name
    column :email
    actions
  end

  show do |application|
    attributes_table do
      row :completed_at
      row :position
      row :first_name
      row :middle_name
      row :last_name
      row :current_address
      row :apt_number
      row :city
      row :state
      row :zip
      row :home_phone
      row :cell_phone
      row :email
      row :authorized_to_work
      row :friends_at_hunter_marine
      row :friends
      row :begin_work
      row :drug_test
      row :drug_test_dates
      row :marine_license
      row :drivers_license
      row :license_issuing_state
      row :license_expiration_date
      row :agree_to_background_check
      row :background_check_agreement_date
      row :agree_to_drug_test
      row :drug_test_agreement_date
      row :agree_to_medical_release
      row :medical_release_agreement_date
      row :twic_card
      row :twic_expiration
      row :felon
      row :felon_explanation

      row "References" do
         application.employment_references.each do |reference|
          attributes_table_for reference do
            row :name
            row :number
            row :relationship
          end
        end
      end

      row "Employment History" do
        application.employment_history_records.each do |record|
          attributes_table_for record do
            row :name_of_employer
            row :phone
            row :address
            row :city
            row :state
            row :zip
            row :name_of_supervisor
            row :position_held
            row :job_duties
            row :date_of_employment
            row :thru
            row :reason_for_leaving
          end
        end
      end

      row "Employment Education Record" do
        application.employment_education_records.each do |record|
          attributes_table_for record do
            row :school_name
            row :address
            row :years
            row :diploma
          end
        end
      end
    end
  end
end
