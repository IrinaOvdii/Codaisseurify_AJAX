class PhotosController < ApplicationController
  def destroy
    photo = Photo.find(params[:id])
    @artist = photo.artist
    photo.destroy
      redirect_to artists_path, notice: "Photo successfully removed"
  end
end
