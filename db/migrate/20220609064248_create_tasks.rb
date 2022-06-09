class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.references :page, null: false, foreign_key: true
      t.string :task
      t.string :status
      t.string :name

      t.timestamps
    end
  end
end
