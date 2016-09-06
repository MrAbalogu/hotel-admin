class AddMoreToTable < ActiveRecord::Migration[5.0]
  def change
  	change_column :rooms, :room_number, :string 
  end
end
