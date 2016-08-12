class AddRefToRoom < ActiveRecord::Migration[5.0]
  def change
  	add_reference :room_customers, :book_room, index: true 
    add_reference :room_customers, :room, index: true 
  	remove_column :room_customers, :customer_id, :integer
  end
end
