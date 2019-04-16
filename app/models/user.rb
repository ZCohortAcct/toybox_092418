class User < ApplicationRecord
  attr_accessor :login

  has_many :toys_user
  has_many :toys, through: :toys_user

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2, :amazon]

  def self.from_omniauth(auth)
    # Either create a User record or update it based on the provider (Google) and the UID
    # binding.pry
    self.where(provider: auth.provider, uid: auth.uid).first_or_create! do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.username = auth.info.name
      user.email = auth.info.email
      # user.password = Devise.friendly_token[0,20]
      # binding.pry
      user.password = user.email.reverse
    end
  end

  def self.find_for_database_authentication warden_conditions
    conditions = warden_conditions.dup
    login = conditions.delete(:login)
    where(conditions).where(["lower(username) = :value OR lower(email) = :value", {value: login.strip.downcase}]).first
  end
end
