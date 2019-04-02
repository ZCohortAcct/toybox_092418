class User < ApplicationRecord
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
      binding.pry
      user.password = user.email.reverse
    end
  end
end
