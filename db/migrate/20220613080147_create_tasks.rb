class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.references :page, null: false, foreign_key: true
      t.string :task, null: false
      t.string :status, null: false
      t.string :name, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
