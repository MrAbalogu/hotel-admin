class CreateBillContainers < ActiveRecord::Migration[5.0]
  def change
    create_table :bill_containers do |t|
      t.string :name
      t.boolean :paid
      t.string :first_name
      t.string :last_name
      t.references :customer, foreign_key: true

      t.timestamps
    end

    add_reference :bills, :bill_container, index: true
    remove_column :bills, :customer_id, :integer
    add_column :bills, :deposit, :integer 
  end
end
