ActiveAdmin.register StrappingTable, as: "Equipment Register" do

  permit_params :barge_number, :year_built, :shipyard, :strappings
  config.sort_order = 'barge_number_asc'
  config.paginate = false

  index do
    selectable_column
    column :barge_number
    column :created_at
    column :year_built
    column :shipyard
    column :strappings do |e|
      e.strappings.file? ? link_to(e.strappings_file_name, e.strappings.url, download: '') : ''
    end
    actions
  end

  form do |f|
    f.inputs "Equipment Rgister" do
      f.input :barge_number, hint: "* These barges are operating under other customer selected numbers<br>** Some customer numbered barges may not appear on the Equipment Register".html_safe
      f.input :year_built
      f.input :shipyard
      f.input :strappings, as: :file, hint: f.object.strappings.file? ? link_to(f.object.strappings_file_name, f.object.strappings.url, download: '') : 'No File, Upload Strappings Zip File Here'
      f.input :notes
    end
    f.actions
  end
end