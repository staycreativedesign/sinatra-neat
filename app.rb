require 'rubygems'
require 'sinatra'

get "/main.css" do
    scss :"sass/base"
end

get '/' do
  haml :index
end


if settings.development?
  require 'rack-livereload'
  use Rack::LiveReload
end

set :enviroment, :development
