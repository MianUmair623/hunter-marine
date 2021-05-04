class AddFieldsToEmploymentApplication < ActiveRecord::Migration
  def change
    add_column :employment_applications, :twic_card, :boolean
    add_column :employment_applications, :twic_expiration, :string

    add_column :employment_applications, :felon, :boolean
    add_column :employment_applications, :felon_explanation, :string
  end
end
