class AddStepToEmploymentApplications < ActiveRecord::Migration
  def change
    add_column :employment_applications, :step, :string
  end
end
