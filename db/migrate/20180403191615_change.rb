class Change < ActiveRecord::Migration[5.1]
  def change
    change_column :donations, :vehicle_size, :string
  end
end
