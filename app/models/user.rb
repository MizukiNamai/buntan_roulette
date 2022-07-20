class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :pages, through: :page_users
  has_many :page_users

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i[line]

  validates :email, presence: true
  validates :password, presence: true, length: { minimum: 6 }

  def social_profile(provider)
    social_profiles.select { |sp| sp.provider == provider.to_s }.first
  end

  def values(omniauth)
    return if provider.to_s != omniauth['provider'].to_s || uid != omniauth['uid']

    info = omniauth['info']
    info['name']
    # self.set_values_by_raw_info(omniauth['extra']['raw_info'])
  end

  def values_by_raw_info(raw_info)
    self.raw_info = raw_info.to_json
    save!
  end
end
