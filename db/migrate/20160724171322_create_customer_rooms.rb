class CreateCustomerRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_rooms do |t|
      t.string :room
      t.string :room_number 
      t.string :first_name
      t.string :last_name 
      t.string :phone_number 
      t.boolean :checked_out
      t.references :room, foreign_key: true
      	
      t.timestamps
    end
  end
end
