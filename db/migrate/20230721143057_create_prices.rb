class CreatePrices < ActiveRecord::Migration[7.0]
  def change
    create_table :prices do |t|
      t.integer :price
      t.date :from_date
      t.date :to_date
      t.integer :product_id

      t.timestamps
    end
  end
end
