class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def authenticate_user!
    redirect_to new_login_path unless session[:logged_in]
  end

  def current_user
    User.find_by(email: session[:logged_in])
  end
end
