class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.integer :page_id
      t.string :task
      t.string :status
      t.string :name

      t.timestamps
    end
  end
end
