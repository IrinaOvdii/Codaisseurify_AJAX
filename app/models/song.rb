class Song < ApplicationRecord
  belongs_to :artist

  validates :name, presence: true, length: { maximum: 100 }
  validates :audio_url, length: { maximum: 255 }, allow_blank: true

  def short?
    duration < 5
  end
end
