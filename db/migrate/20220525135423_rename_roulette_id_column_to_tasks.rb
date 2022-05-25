class RenameRouletteIdColumnToTasks < ActiveRecord::Migration[7.0]
  def change
    rename_column :tasks, :roulette_id, :page_id
  end
end
