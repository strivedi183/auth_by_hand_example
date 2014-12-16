class LoginController < ApplicationController
  def new
  end

  def create
    if User.authenticate(params[:login][:email], params[:login][:password])
      session[:logged_in] = params[:login][:email]
      redirect_to root_path
    else
      redirect_to new_login_path, alert: 'Invalid username or password'
    end
  end

  def destroy
    session[:logged_in] = nil
    redirect_to root_path
  end
end
