class Task < ApplicationRecord
  validates :roulette_id, presence: true
  validates :tasks, presence: true
  validates :status, presence: true
  validates :name, presence: true
  belongs_to :page
end
