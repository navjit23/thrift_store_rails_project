class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :password
      t.string :email
      t.string :address
      t.date :DOB
      t.integer :card_id

      t.timestamps
    end
  end
end
