require 'sinatra'
require 'sinatra/reloader'

number = Random.rand(0..99)
get '/' do
  erb :index, :locals => {:number => number}
end
