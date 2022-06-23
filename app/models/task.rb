class Task < ApplicationRecord
  belongs_to :page
  validates :task, length: { maximum: 5 }
  validates :name, length: { maximum: 5 }
end
