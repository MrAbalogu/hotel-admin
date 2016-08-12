class AddColumnToTable < ActiveRecord::Migration[5.0]
  def change
  	change_column :customers, :phone_number, :string
  end
end
