require 'rubygems'
require 'sinatra'
require 'sinatra/flash'
require 'sinatra/partial'

set :partial_template_engine, :erb

enable :sessions
enable :partial_underscores

configure :production do
  require 'newrelic_rpm'
end

get '/' do
  erb :index
end

get '/about' do
  erb :about
end

get '/sample' do
  erb :sample
end

not_found do
  status 404
  erb :fourohfour
end
