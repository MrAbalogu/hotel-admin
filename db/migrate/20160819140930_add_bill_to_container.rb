class AddBillToContainer < ActiveRecord::Migration[5.0]
  def change
  	rename_column :bill_containers, :first_name, :customer_first_name
  	rename_column :bill_containers, :last_name, :customer_last_name 
  	rename_column :book_rooms, :first_name, :customer_first_name 
  	rename_column :book_rooms, :last_name, :customer_last_name 
  	add_column :book_rooms, :days, :integer 
  	add_column :book_rooms, :deposit, :integer  
  	add_column :bill_containers, :room_id, :integer  
  	add_column :book_rooms, :bill_price, :string  
  	add_column :book_rooms, :room_price, :string
    add_reference :book_rooms, :room, index: true  
    add_index :customers, [:first_name, :last_name], :unique => true  
  end
end
