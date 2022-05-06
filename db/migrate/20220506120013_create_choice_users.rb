class CreateChoiceUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :choice_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :choice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
