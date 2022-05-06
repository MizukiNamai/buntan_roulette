class ChoiceUser < ApplicationRecord
  belongs_to :user, foreign_key: { on_delete: :cascade }
  belongs_to :choice, foreign_key: { on_delete: :cascade }
end
