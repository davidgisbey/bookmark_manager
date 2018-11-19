require 'spec_helper'

feature 'A list of bookmarks exists' do
  scenario 'By visiting /bookmarks user can access the list of bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content("Your list of bookmarks")
  end
end
