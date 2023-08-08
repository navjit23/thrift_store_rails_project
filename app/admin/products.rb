ActiveAdmin.register Product do
  actions :index, :edit, :update, :create, :destroy, :new
  permit_params :name, :desc, :price, :image, :category_id

  filter :name
  filter :desc
  filter :price
  filter :category_id
end
