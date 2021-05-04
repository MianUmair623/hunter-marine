ActiveAdmin.register NewsArticle do

  menu false
  
  controller do
    def permitted_params
      params.permit news_article: [:title, :text, :category, :file, :image, :remove_file, :remove_image, :created_at]
    end
  end

  index do
    column :id
    column :title
    column :category
    column :created_at
    actions
  end

  form do |f|
    f.inputs "News" do
      f.input :title
      f.input :text
      f.input :category, :as => :select, :collection => ["Hunter Marine Transport", "Hunter Sand & Gravel"]
      f.input :file, :required => false, :as => :file, hint: f.object.file.file? ? link_to(f.object.file_file_name, f.object.file.url, target: '_blank') : ''
      if f.object.file.file?
        f.input :remove_file, as: :boolean, required: false, label: "Remove File"
      end
      f.input :image, hint: f.object.image.file? ? content_tag(:div, image_tag(f.object.image.url(:resized), style: "max-width:100%; max-height:100%"), style: "max-width:600px; margin: 10px 0 0 20%;") : ''
      if f.object.image.file?
        f.input :remove_image, as: :boolean, required: false, label: "Remove Image"
      end
      f.input :created_at
    end
    f.actions
  end
end