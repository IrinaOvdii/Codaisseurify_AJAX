require 'rails_helper'

feature 'Deleting', js: true do
  let!(:artist) { create :artist }
  let!(:song) { create :song, id: 18, name: 'Nice song', artist: artist }

  scenario 'delets one song' do
    visit artist_path(artist)
    click_on('Delete song')
    # expect( page.find(:css, 'div#delete-song-18').click )
    expect(page).to have_css('li#song-18', :count => 0)
    # expect(page).to not_have('Nice song')
  end

  scenario 'delets all songs of the artist' do
    visit artist_path(artist)

    click_on('Delete all songs')

    expect(page).to have_css("li", :count => 0)
  end
end
