require 'sinatra'

get '/' do
  "Hello World"
end

get '/secret' do
  "Bla bla black sheep"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking", "Matthew", "Louis"].sample
  erb(:index)
end

get '/named-cat' do
  @name = params[:name]
  erb :index
end

get '/form' do
  erb(:form)
end
