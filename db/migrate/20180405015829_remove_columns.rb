class RemoveColumns < ActiveRecord::Migration[5.1]
  def change
    remove_column :donations, :due_at, :datetime
    remove_column :house_cleanings, :due_at, :datetime
    remove_column :movings, :due_at, :datetime
    remove_column :others, :due_at, :datetime
    remove_column :shoppings, :due_at, :datetime
    remove_column :tasks, :additional_info
  end
end
