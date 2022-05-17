class RenameTasksColumnToTasks < ActiveRecord::Migration[7.0]
  def change
    rename_column :tasks, :tasks, :task
  end
end
