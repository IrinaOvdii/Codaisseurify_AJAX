class Api::ArtistsController < ApplicationController
  def index
    render status: 200, json: {
      artists: Artist.all
    }.to_json
  end
end
