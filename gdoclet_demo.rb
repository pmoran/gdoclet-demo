require 'sinatra'
require 'haml'
require "sinatra/gdoclet_helper"

get '/' do
  haml :index
end

get '/blog' do
  haml :blog
end

get '/flush' do
  flush_content(params[:token])
end