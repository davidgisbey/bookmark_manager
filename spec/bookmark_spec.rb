require 'bookmark'

describe BookMark do
  let(:bookmark) { BookMark.new }

  it 'Can show a list of bookmarks' do
    expect(bookmark).to respond_to(:list)
  end

  it "list's the bookmarks on the /bookmark route" do
    expect(bookmark.print).to include("http://www.google.com")
  end

end
