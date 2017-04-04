require 'rubygems'
require 'sinatra'

get "/main.css" do
    scss :"sass/base"
end

get '/' do
  haml :index
end
