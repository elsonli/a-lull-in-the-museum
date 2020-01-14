class Api::LikesController < ApplicationController

  def index
    @likes = Like.all
    render "api/likes/index"
  end

  def create
    @like = Like.new(like_params)
    if @like.save
      render "api/likes/create"
    else
      render json: @like.errors.full_messages, status: 422
    end
  end

  def destroy
    @like = Like.find_by(id: params[:id])
    @like.destroy
    render "api/likes/destroy"
  end

  private
  
  def like_params
    params.require(:like).permit(:user_id, :artwork_id)
  end

end
