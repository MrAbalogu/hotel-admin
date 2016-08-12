class CreateRoomCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :room_categories do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end

    add_reference :rooms, :room_category, index: true
    add_column :rooms, :room_price, :integer
    add_column :rooms, :room_type, :string 
  end
end
