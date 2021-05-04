class CreateContactSubmissions < ActiveRecord::Migration
  def change
    create_table :contact_submissions do |t|
      t.string :location
      t.string :subject
      t.string :name
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
