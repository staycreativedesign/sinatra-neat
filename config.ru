require 'rack-livereload'
require 'sass/plugin/rack'
require './app'
use Sass::Plugin::Rack
use Rack::LiveReload

run Sinatra::Application
