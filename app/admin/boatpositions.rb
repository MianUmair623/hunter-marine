ActiveAdmin.register Boatpositions do
  
  menu parent: 'Boat Info', label: 'Boat Positions'

  actions :all, :except => [:new, :destroy]

  permit_params :active #, :boatname, :mile_marker, :direction, :river, :delay, :turn, :charter, :position

  filter :boatname

  config.sort_order = 'boatname_asc'
=begin
  config.paginate = false

  sortable

  action_item :bulk_edit, only: :index do
    link_to 'Bulk Edit', bulk_edit_admin_boatpositions_path
  end

  collection_action :bulk_edit, method: :get, name: "Bulk Edit Boat Positions" do
    @boatpositions = collection
  end

  collection_action :bulk_update, method: :put do
    params[:boat_positions].each do |id, boat_params|
      boat_position = Boatpositions.find id
      [:boatname, :mile_marker, :direction, :river, :delay, :turn, :charter].each do |field|
        boat_position.send("#{field}=", boat_params[field])
      end

      boat_position.save if boat_position.changed?
    end
    redirect_to bulk_edit_admin_boatpositions_path, notice: "Updated Successfully!"
  end
=end

  index do
    column :boatname
    column :active
=begin
    selectable_column
    sortable_handle_column
    column :boatname
    column :mile_marker
    column :direction
    column :river
    column :delay
    column :turn
    column :charter
    column :updated_at
=end
    actions
  end

  show do |application|
    attributes_table do
      row :boatname
      row :active
    end
  end

  form do |f|
    f.inputs "Boatpositions" do
      f.input :boatname, input_html:{ readonly: true, disabled: true} 
      f.input :active
    end
    f.actions
  end

end
