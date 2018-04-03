class CreateShoppings < ActiveRecord::Migration[5.1]
  def change
    create_table :shoppings do |t|
      t.string :store_name, null: false
      t.text :list, null: false
      t.decimal :expected_expense, null: false
      t.datetime :due_at, null: false
      t.timestamps
    end
  end
end
