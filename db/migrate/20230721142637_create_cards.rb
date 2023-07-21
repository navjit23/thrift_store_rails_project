class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.integer :number
      t.string :address
      t.integer :cvv
      t.date :exp_date
      t.integer :customer_id

      t.timestamps
    end
  end
end
