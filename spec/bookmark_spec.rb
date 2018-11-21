require 'bookmark'


describe BookMark do
  describe '.all' do
    it 'returns a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      BookMark.create(url: "http://www.makersacademy.com")
      BookMark.create(url: "http://www.destroyallsoftware.com")
      BookMark.create(url: "http://www.google.com")
      bookmarks = BookMark.all
      expect(bookmarks).to include "http://www.makersacademy.com"
      expect(bookmarks).to include "http://www.destroyallsoftware.com"
      expect(bookmarks).to include "http://www.google.com"
    end
  end

  describe '.create' do
  it 'creates a new bookmark' do
    BookMark.create(url: 'http://www.testbookmark.com')

    expect(BookMark.all).to include 'http://www.testbookmark.com'
   end
  end
end
