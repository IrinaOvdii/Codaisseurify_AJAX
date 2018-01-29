require 'rails_helper'

feature 'Manage tasks', js: true do
  let!(:artist) { create :artist}

  scenario 'add a new song' do
    # Point your browser towards the todo path
    visit artist_path(artist)

    # Enter description in the text field
    fill_in 'song_name', with: 'Nice song'

    # Press enter (to submit the form)
    # click_on('submit')
    page.execute_script("$('form').submit()")

    # Expect the new task to be displayed in the list of tasks
    expect(page).to have_content('Nice song')
  end
end
