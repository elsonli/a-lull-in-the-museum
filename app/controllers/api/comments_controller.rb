class Api::CommentsController < ApplicationController
  
  def index
    @comments = Comment.all.includes(:user)
    render :index
  end

end
