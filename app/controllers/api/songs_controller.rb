class Api::SongsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_artist

  def index
    songs = Song.all
    render status: 200, json: songs
  end

  def new
    song = @artist.songs.build
  end

  # def show
  #    song = @artist.songs.find(params[:artist_id])
  #    render status: 200, json: {
  #      song: song
  #    }.to_json
  # end

  def create
    #song = Song.new(song_params)
    #song.artist = Artist.find(params[:artist_id])
    song = @artist.songs.create(song_params)

    if song.save
      render status: 201, json: {
        artist: @artist,
        song: song
      }.to_json
      #format.html {redirect_to @song.artist, notice: "Song successfully created"}
      #redirect_to @song.artist
    else
      render status: 422, json: {
        message: "Song could not be created",
        errors: song.errors
      }.to_json
      #render 'new'
    end
  end

  def destroy
    song = @artist.songs.find(params[:id])
    song.destroy

    render status: 200, json: {
      message: "Song Deleted!"
    }.to_json
    format.html { redirect_to @artist, notice: "Song Deleted!" }
  end






  def set_artist
      @artist = Artist.find(params[:artist_id])
  end

  def song_params
    params.require(:song).permit(:name, :duration, :audio_url, :artist_id)
  end
end
