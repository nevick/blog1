class Devise::OmniauthCallbacksController < DeviseController

  def facebook
    @user = User.from_omniauth(request.env['omniauth.auth'])

    sign_in(@user)
    redirect_to root_path, notice: 'Welcome from FB'
  end

  def vkontakte
    @user = User.from_omniauth(request.env['omniauth.auth'])

    sign_in(@user)
    redirect_to root_path, notice: 'Welcome from VK'
  end

  def failure
    redirect_to root_path, notice: 'Bad authentification'
  end
end