require 'sinatra'
require 'sinatra/reloader'

SECRET_NUMBER = rand(100)

get '/' do
  guess = params["guess"]
  message = checker(guess)
  erb :index, :locals => {secret_number: SECRET_NUMBER, message: message}
end

  def checker(guess)
  if guess.to_i == SECRET_NUMBER
    "You got it right! The SECRET NUMBER is #{SECRET_NUMBER}"
  elsif guess.to_i > SECRET_NUMBER + 5
    "Way Too High!"
  elsif guess.to_i > SECRET_NUMBER
      "Too High!"
    elsif guess.to_i < SECRET_NUMBER - 5
      "Way Too Low!"
    elsif guess.to_i < SECRET_NUMBER
      "Too Low!"
    end
  end
