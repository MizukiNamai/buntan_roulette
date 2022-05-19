class Task < ApplicationRecord
  enum status: { todo: 0, doing: 1, done: 2 }
  validates :roulette_id, presence: true
  validates :tasks, presence: true
  validates :status, presence: true
  validates :name, presence: true
  belongs_to :page
end
