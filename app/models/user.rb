class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :pages, through: :page_users
  has_many :page_users

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  VALID_PASSWORD_REGEX =/\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[\d])\w{6,12}\z/

  validates :email, presence: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :password, presence: true, format: { with: VALID_PASSWORD_REGEX }
end
