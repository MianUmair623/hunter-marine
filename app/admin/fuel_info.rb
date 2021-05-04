ActiveAdmin.register FuelInfo do
  menu parent: 'Boat Info', label: 'Fuel Info'
  actions :index, :edit, :update

  before_filter :skip_sidebar!, :only => :index

  permit_params :price, :surcharge

  index download_links: false do
    column :price
    column :surcharge
    actions
  end
end
