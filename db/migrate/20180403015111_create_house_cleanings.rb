class CreateHouseCleanings < ActiveRecord::Migration[5.1]
  def change
    create_table :house_cleanings do |t|
      t.string :address
      t.integer :num_of_bathrooms
      t.text :type_of_cleaning
      t.timestamps
    end
  end
end
