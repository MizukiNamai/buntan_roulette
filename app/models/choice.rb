class Choice < ApplicationRecord
  has_many :users, through: :choice_users
  has_many :choice_users
  accepts_nested_attributes_for :choice_users
end
