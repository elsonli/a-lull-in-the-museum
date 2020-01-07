class Api::ArtworksController < ApplicationController
  def index
    @artworks = Artwork.all
    render :index
    # render json: @artworks.map { |artwork| artwork.title }
  end

  def show
    @artwork = Artwork.find_by(id: params[:id])
    # @photos = @artwork.photos.map { |photo| url_for(photo) }
    render :show
  end

  private

  def artwork_params
    params.require(:artwork).permit(:title, :description, photos: [])
    # params.require(:artwork).permit(:title, :description, :video, :photos: [])
  end
end
