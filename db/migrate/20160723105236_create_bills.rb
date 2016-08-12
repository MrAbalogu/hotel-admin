class CreateBills < ActiveRecord::Migration[5.0]
  def change
    create_table :bills do |t|
      t.string :bill_name
      t.integer :bill_price
      t.boolean :paid
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
