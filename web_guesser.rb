require 'sinatra'
require 'sinatra/reloader'

number = Random.rand(0..99)

get '/' do
  "THE SECRET NUMBER IS #{number}"
end
