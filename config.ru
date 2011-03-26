require 'rubygems'
require 'bundler'

Bundler.require
require File.expand_path(File.join('..', 'gdoclet_demo'), __FILE__)

run Sinatra::Application
