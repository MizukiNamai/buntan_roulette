class CreatePageUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :page_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :page, null: false, foreign_key: true

      t.timestamps
    end
  end
end
