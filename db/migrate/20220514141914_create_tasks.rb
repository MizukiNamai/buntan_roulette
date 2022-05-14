class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.integer :roulette_id
      t.string :tasks
      t.integer :status
      t.string :name

      t.timestamps
    end
  end
end
