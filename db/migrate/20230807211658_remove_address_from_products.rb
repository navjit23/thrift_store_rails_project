class RemoveAddressFromProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :address

  end
end
