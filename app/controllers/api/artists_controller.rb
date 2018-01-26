class Api::ArtistsController < ApplicationController
  # before_action: :set_artist, only: [:show]
  def index
    render status: 200, json: {
      artists: Artist.all
    }.to_json
  end

  def show
    artist = Artist.find(params[:id])
    render status: 200, json: {
      artist: artist
    }.to_json
  end

  def artist_params
    params.require(:artist).permit(:name, :image_url)
  end

  def image_params
    params[:images].present? ? params.require(:images) : []
  end
end
