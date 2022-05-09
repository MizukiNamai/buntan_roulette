class Page < ApplicationRecord
  has_many :users, through: :page_users
  has_many :page_users
  accepts_nested_attributes_for :page_users
end
