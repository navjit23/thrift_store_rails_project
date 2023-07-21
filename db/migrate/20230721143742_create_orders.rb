class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :payment_method
      t.string :order_status
      t.date :date_ordered
      t.date :date_recieved
      t.boolean :recieved

      t.timestamps
    end
  end
end
