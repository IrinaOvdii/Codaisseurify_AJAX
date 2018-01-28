require 'rails_helper'

feature 'Manage tasks', js: true do
  scenario 'add a new song' do
    artist = Artist.create!(name: "Madonna")
    # Point your browser towards the todo path
    visit artist_path(artist)

    # Enter description in the text field
    fill_in 'song_name', with: 'Nice song'

    # Press enter (to submit the form)
    page.execute_script("$('form').submit()")

    # Expect the new task to be displayed in the list of tasks
    expect(page).to have_content('Nice song')
  end
end
