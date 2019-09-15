class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2]
	has_one_attached :bar

	def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first

    # Uncomment the section below if you want users to be created if they don't exist
    unless user
        user = User.create(
        	name: data['name'],
          email: data['email'],
          password: Devise.friendly_token[0,20],
          access_token: access_token.credentials['token'],
          credits: 50,
          savings: "You need to collect 30 grams of cigarettes to reach your goal!"
        )
    end
    user
  end
end
