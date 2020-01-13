class Api::UsersController < ApplicationController

  # Show a user's dashboard
  def show
    @user = User.includes(:liked_artworks).find_by(id: params[:id])
    if @user
      render :show
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  # User signup
  def create
    @user = User.new(user_params)
    debugger
    if @user.save
      login!(@user)
      render :create
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end