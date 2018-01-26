require 'rails_helper'

describe "User viewing the list of artists" do

  let!(:artist1) { create :artist, name: "Artist_1", image_url: "http://res.cloudinary.com/irinaovdii/image/upload" }
  let!(:artist2) { create :artist, name: "Artist_2", image_url: "http://res.cloudinary.com/irinaovdii/image/upload" }
  let!(:artist3) { create :artist, name: "Artist_3", image_url: "http://res.cloudinary.com/irinaovdii/image/upload"}

  it "shows all Artists" do
    visit artists_url

    expect(page).to have_text("Artist_1")
    expect(page).to have_text("Artist_2")
  end
end
