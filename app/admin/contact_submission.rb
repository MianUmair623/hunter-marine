ActiveAdmin.register ContactSubmission do
  actions :all, except: [:new, :edit]

  index do
    id_column
    column :location
    column :subject
    column :name
    column :email
    column :created_at
    actions
  end
end
