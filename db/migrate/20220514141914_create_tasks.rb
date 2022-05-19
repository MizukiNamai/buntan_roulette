class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.integer :roulette_id, null: false
      t.string :tasks , null: false
      t.integer :status, null: false, default: 0
      t.string :name, null: false

      t.timestamps
    end
  end
end
