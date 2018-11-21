require 'bookmark'


describe BookMark do
  describe '.all' do
    it 'returns a list of bookmarks' do
      bookmarks = BookMark.all

      expect(bookmarks).to include "http://www.makersacademy.com"
      expect(bookmarks).to include "http://www.destroyallsoftware.com"
      expect(bookmarks).to include "http://www.google.com"
    end
  end
end
