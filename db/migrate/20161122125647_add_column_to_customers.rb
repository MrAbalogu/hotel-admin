class AddColumnToCustomers < ActiveRecord::Migration[5.0]
  def change
  	add_column :customers, :email, :string 
  	add_column :book_rooms, :midnight, :boolean 
  end
end
