ActiveAdmin.register Category do
  actions :index, :edit, :update, :create, :destroy, :new
  permit_params :name, :desc

  filter :name
  filter :desc
end