class Api::CommentsController < ApplicationController
  
  def index
    @comments = Comment.all.includes(:user)
    render :index
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      render :create
    else
      render json: @comment.errors.full_messages, status: 422
    end
  end

  def update
    @comment = Comment.includes(:user).find_by(id: params[:id])
    if @comment.update(comment_params)
      render :update
    else
      render json: @comment.errors.full_messages, status: 422
    end
  end

  def destroy
    @comment = Comment.includes(:user).find_by(id: params[:id])
    @comment.destroy
    render :destroy
  end

  private
  
  def comment_params
    params.require(:comment).permit(:user_id, :artwork_id, :body)
  end

end
