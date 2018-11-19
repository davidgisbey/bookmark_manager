require 'sinatra/base'
require './lib/bookmarks.rb'

class BookmarkManager < Sinatra::Base
  get '/' do
    "Hello"
  end

  get '/bookmarks' do
    erb :bookmarks
  end

  run! if app_file == $0

end
