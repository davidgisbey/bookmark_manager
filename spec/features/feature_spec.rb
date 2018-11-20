require 'spec_helper'

feature 'A list of bookmarks exist' do
  scenario 'By visiting /bookmarks user can access the list of bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content( "http://www.makersacademy.com, http://www.destroyallsoftware.com, http://www.google.com")
    end
end
