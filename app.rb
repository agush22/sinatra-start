require 'rubygems'
require 'sinatra'
require 'sinatra/flash'

enable :sessions

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
