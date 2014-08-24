ActiveAdmin.register Post do
  scope :admin

  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  index do
    column :title
    column :slug
    column :blurb
    column :created_at
    actions
  end
  
  form :html => {enctype: "multipart/form-data" } do |f|
    f.inputs 'Details' do
      f.input :title
      f.input :slug
      f.input :blurb
      f.input :category
      f.input :content, as: :text
    end
    
    f.inputs 'Images' do
      f.input :image, label: 'Post image', as: :file
    end
    f.actions
  end

end
