class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url

  has_many :songs, dependent: :destroy
  has_many :photos, dependent: :destroy

end
