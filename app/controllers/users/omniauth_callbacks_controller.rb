class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  include Devise::Controllers::Rememberable

  def facebook
    @user = User.find_or_create_for_facebook(facebook_info, facebook_access_token)
    sign_in @user
    remember_me @user
    redirect_to(root_path, event: :authentication)
  end

  def facebook_info
    request.env['omniauth.auth'].info
  end

  def facebook_access_token
    request.env['omniauth.auth'].credentials.token
  end
end
