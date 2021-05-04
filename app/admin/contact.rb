ActiveAdmin.register Contact do

  menu label: "Directory"
  permit_params :name, :title, :phone, :email

  index do
    selectable_column
    column :name
    column :title
    column :phone
    column :email
    actions
  end
end