class Task < ApplicationRecord
  belongs_to :page
  validates :task, length: { maximum: 5 }
  validates :name, length: { maximum: 5 }
  validates :task, presence: true
  validates :name, presence: true
  validates :status_id, presence: true
  validates :page_id, presence: true
  validates :user_id, presence: true
end
