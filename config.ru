require 'sass/plugin/rack'
require './app'

Sass::Plugin.options[:style] = :compressed
use Sass::Plugin::Rack

use Rack::Session::Cookie, :secret => '2c9nv8iwq92r89c892mc287'

run Sinatra::Application
