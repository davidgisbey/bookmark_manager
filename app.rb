require 'sinatra/base'
require './lib/bookmark.rb'

class BookmarkManager < Sinatra::Base
  get '/' do
    "Hello"
  end

  get '/bookmarks' do
    @bookmarks = BookMark.all
    erb :bookmarks
  end

  run! if app_file == $0

end
