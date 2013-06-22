module Authentication
  extend ActiveSupport::Concern

  included do
    devise :database_authenticatable, :registerable, :token_authenticatable, :recoverable, :rememberable, :trackable,
           :validatable, :omniauthable

    validates :name, presence: true
  end

  module ClassMethods
    def find_or_create_for_facebook(info, access_token)
      avatar_url = info['image']

      if user = find_by(email: info.email)
        user.update(email: info.email, name: info.name, remote_avatar_url: avatar_url, authentication_token: access_token)
      else
        user = create! do |user|
          user.email                = info.email
          user.password             = Devise.friendly_token[0,20]
          user.name                 = info.name
          user.remote_avatar_url    = avatar_url
          user.authentication_token = access_token
        end
      end
      user
    end
  end
end
