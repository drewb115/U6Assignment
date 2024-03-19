ActiveAdmin.register Customer do
  permit_params :full_name, :phone_number, :email_address, :notes, image: []

  form do |f|
    f.inputs 'Customer Details' do
      f.input :full_name
      f.input :phone_number
      f.input :email_address
      f.input :notes
      f.input :image, as: :file
    end
    f.actions
  end

  show do |t|
    attributes_table do
      row :full_name
      row :phone_number
      row :email_address
      row :notes
      row :image do |ad|
        image_tag url_for(ad.image) if ad.image.attached?
      end
    end
  end
end
