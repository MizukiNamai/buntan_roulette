class ChangeDataStatusToTasks < ActiveRecord::Migration[7.0]
  def change
    change_column :tasks, :status, :string
  end
end
