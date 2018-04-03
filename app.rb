require 'sinatra'

get '/' do
  "Hello World"
end

get '/secret' do
  "Bla bla black sheep"
end

get '/cat' do
  erb(:show_image)
end

get '/hello/:name' do
  # matches "GET /hello/foo" and "GET /hello/bar"
  # params['name'] is 'foo' or 'bar'
  "Hello #{params['Louis']}!"
end

post '/' do
  "Louis says hi"
end

put '/' do
  "Hello Louis"
end
