class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.integer :room_number
      t.boolean :availability
      t.boolean :neatness

      t.timestamps
    end
  end
end
