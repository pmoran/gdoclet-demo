require 'sinatra'
require 'haml'
require "sinatra/gdoclet_helper"

configure :production do
  require 'newrelic_rpm'
end

get '/' do
  haml :index
end

get '/blog' do
  haml :blog
end

get '/flush' do
  flush_content(params[:token])
end
