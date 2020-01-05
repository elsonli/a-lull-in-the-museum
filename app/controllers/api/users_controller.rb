class Api::UsersController < ApplicationController

  # Show a user's dashboard
  def show
  end

  # User signup
  def create
    @user = User.new(user_params)
    if @user.save
      login!(@user)
      render json: @user # Probably change to render artwork gallery below
      # render "api/artworks/index"
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end