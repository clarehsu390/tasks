class CreateMovings < ActiveRecord::Migration[5.1]
  def change
    create_table :movings do |t|
      t.integer :num_of_people
      t.string :address
      t.datetime :due_at
      t.timestamps
    end
  end
end
