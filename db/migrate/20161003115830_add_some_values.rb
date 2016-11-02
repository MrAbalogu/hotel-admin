class AddSomeValues < ActiveRecord::Migration[5.0]
  def change
  	add_column :bills, :receipt_no, :string 
  	add_column :book_rooms, :disc_amount, :integer 
  	add_column :bill_containers, :checked_out, :boolean
  	add_column :rooms, :faulty, :boolean 
  	add_column :rooms, :fault_type, :string
  end
end
