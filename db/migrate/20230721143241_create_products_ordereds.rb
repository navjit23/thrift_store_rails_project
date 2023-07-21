class CreateProductsOrdereds < ActiveRecord::Migration[7.0]
  def change
    create_table :products_ordereds do |t|
      t.integer :order_id
      t.integer :product_id
      t.integer :quantity
      t.string :comments

      t.timestamps
    end
  end
end
