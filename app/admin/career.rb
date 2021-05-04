ActiveAdmin.register Career do
  permit_params :title, :location, :description, :position

  config.sort_order = 'position_asc'
  config.paginate = false

  sortable

  index do
    selectable_column
    sortable_handle_column
    column :title
    column :location
    actions
  end
end
