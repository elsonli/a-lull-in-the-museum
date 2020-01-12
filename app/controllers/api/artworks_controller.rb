class Api::ArtworksController < ApplicationController
  def index
    @artworks = Artwork.with_attached_photos.with_attached_videos.all
    render :index
  end

  def show
    @artwork = Artwork.with_attached_photos.includes(:comments).find_by(id: params[:id])
    if @artwork
      render :show
    else
      render json: ["Artwork Not Found"], status: 404
    end
  end

  private

  def artwork_params
    params.require(:artwork).permit(:title, :description, videos: [], photos: [])
  end
end
