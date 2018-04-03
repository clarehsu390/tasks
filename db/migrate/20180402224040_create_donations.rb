class CreateDonations < ActiveRecord::Migration[5.1]
  def change
    create_table :donations do |t|
      t.integer :vehicle_size
      t.string :address
      t.boolean :receipt_needed?
      t.datetime :due_at
      t.timestamps
    end
  end
end
