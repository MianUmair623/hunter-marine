class AddCompletedAtToEmploymentApp < ActiveRecord::Migration
  def change
    add_column :employment_applications, :completed_at, :timestamp
  end
end
