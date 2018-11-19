require 'bookmarks'

describe Bookmarks do
  let(:bookmarks) { Bookmarks.new }

  it 'Can show a list of bookmarks' do
    expect(bookmarks).to respond_to(:list)
  end
end
