class Api::CommentsController < ApplicationController
  
  def index
    @comments = Comment.all
    render :index
  end

end
