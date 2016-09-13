class AddColumns < ActiveRecord::Migration[5.0]
  def change
  	add_column :book_rooms, :rollback, :boolean 
  	add_column :bill_containers, :rollback, :boolean 
  	add_column :users, :password, :string
  	add_column :book_rooms, :discount, :boolean
  end
end
