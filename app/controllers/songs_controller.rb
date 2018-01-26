class SongsController < ApplicationController
  before_action :set_artist

  def show
     @song = artist.songs.find(params[:artist_id])
  end

  def new
    @song = @artist.songs.new
  end

  def create
    @song = Song.new(song_params)
    @song.artist = Artist.find(params[:artist_id])
    if @song.save
      redirect_to @song.artist
    else
      render 'new'
    end
  end

  def destroy
    @song = @artist.songs.find(params[:id])
    @song.destroy
    redirect_to @artist, notice: "Song Deleted!"
  end

  def set_artist
      @artist = Artist.find(params[:artist_id])
  end

  def song_params
    params.require(:song).permit(:name, :duration, :audio_url, :artist_id)
  end


end
