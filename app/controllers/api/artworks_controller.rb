class Api::ArtworksController < ApplicationController
  def index
    @artworks = Artwork.all
    render :index
  end

  def show
    @artwork = Artwork.find_by(id: params[:id])
    # @photos = @artwork.photos.map { |photo| url_for(photo) }
    if @artwork
      render :show
    else
      render json: ["Artwork Not Found"], status: 404
    end
  end

  private

  def artwork_params
    params.require(:artwork).permit(:title, :description, photos: [])
    # params.require(:artwork).permit(:title, :description, :video, photos: [])
  end
end
