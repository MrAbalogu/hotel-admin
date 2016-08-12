class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone_number
      t.string :sex

      t.timestamps
    end
  end
end
