class CreateBookRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :book_rooms do |t|
      t.integer :room
      t.string :room_number 
      t.string :first_name
      t.string :last_name 
      t.string :phone_number 
      t.boolean :checked_out
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
