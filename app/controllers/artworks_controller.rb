class ArtworksController < ApplicationController
  def index
    @artworks = Artwork.includes(:video)
    render :index
  end

  def show
    @artwork = Artwork.find_by(id: params[:id])
    render :show
  end

  private

  def artwork_params
    params.require(:artwork).permit(:title, :description, :video)
    # params.require(:artwork).permit(:title, :description, :video, :photos: [])
  end

end
