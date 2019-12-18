require 'sinatra'
require 'movie'

get('/movies') do
  @movies = []
  @movies[0] = Movie.new(title: 'Jaws')
  @movies[1] = Movie.new(title: 'Alien')
  @movies[2] = Movie.new(title: 'Terminator 2')
  erb :index
end

get('movies/new') do
  erb :new
end