class CreateRoomCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :room_customers do |t|
      t.boolean :checked_out
      t.string :room 
      t.references :room, foreign_key: true
      t.references :customer, foreign_key: true

      t.timestamps
    end

    change_column :rooms, :room_number, :string 
  end
end
