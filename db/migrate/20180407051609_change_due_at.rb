class ChangeDueAt < ActiveRecord::Migration[5.1]
  def change
    change_column :tasks, :due_at, :string
  end
end
