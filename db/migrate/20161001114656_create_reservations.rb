class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.date :check_in
      t.date :check_out
      t.string :room_type
      t.integer :people
      t.boolean :room
      t.boolean :hall
      t.boolean :space
      t.boolean :pool
      t.integer :deposit 

      t.timestamps
    end
  end
end
