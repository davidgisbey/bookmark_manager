require 'sinatra/base'
require './lib/bookmark.rb'

class BookmarkManager < Sinatra::Base
  get '/' do
    "Hello"
  end

  get '/bookmarks' do
    p ENV
    @bookmarks = BookMark.all
    erb :bookmarks
  end

  get '/bookmarks/new' do
    erb :"bookmarks/new"
  end


  post '/bookmarks' do
    Bookmark.create(url: params[:url])
  end

  run! if app_file == $0

end
