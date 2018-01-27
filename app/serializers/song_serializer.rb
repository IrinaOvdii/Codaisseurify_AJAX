class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :duration, :audio_url, :artist_id

  belongs_to :artist
end
