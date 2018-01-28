class Api::ArtistsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_artist, only: [:show]

  def index
    artists = Artist.all
    render status: 200, json: artists
  end

  def show
    #artist = Artist.find(params[:id])
    songs = artist.songs
    render status: 200, json: artist.songs
  end




  def set_artist
    artist = Artist.find(params[:id])
    render status: 200, json: artist
  end

  def artist_params
    params.require(:artist).permit(:name, :image_url)
  end

  def image_params
    params[:images].present? ? params.require(:images) : []
  end

end
