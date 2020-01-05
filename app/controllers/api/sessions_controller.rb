class Api::SessionsController < ApplicationController

  # User login
  def create
    @user = User.find_by_credentials(
      params[:user][:username],
      params[:user][:password]
    )
    if @user
      login!(@user)
      render json: @user # Probably change to render artwork gallery
    else
      render json: ["Invalid username/password combination"], status: 401
    end
  end

  # User logout
  def destroy
    @user = current_user
    if @user
      logout!
      render json: {} # REPLACE
    else
      render json: ["Nobody signed in"], status: 404
    end
  end

end
