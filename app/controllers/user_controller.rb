class UserController < ApplicationController
  def sign_in
    user_name = params[:data][:username]
    password = params[:data][:password]
    if User.exists?(username: username, password: password)
      session[:user] = params[:data][:username]
      redirect_to home_path
    end
    end
end
