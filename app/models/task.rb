class Task < ApplicationRecord
  belongs_to :page
  validates :task, length: { maximum: 5 }
  validates :name, length: { maximum: 5 }
  validates :status_id, presence: true
  validates :page_id, presence: true
  validates :user_id, presence: true
end
