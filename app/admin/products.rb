ActiveAdmin.register Product do
  permit_params :name, :desc, :price, :category_id, :image

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :name
      f.input :desc
      f.input :price
      f.input :category
      f.input :image, as: :file
    end
    f.actions
  end
end
