class CreateOthers < ActiveRecord::Migration[5.1]
  def change
    create_table :others do |t|
      t.string :title
      t.text :description
      t.datetime :due_at
      t.timestamps
    end
  end
end
