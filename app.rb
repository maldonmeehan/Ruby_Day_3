require('sinatra')
require('sinatra/reloader')
require('./lib/title_case')
require('./lib/scrabble')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end
get('/titlecase') do
  erb(:titlecase)
end

get('/title') do
  @title = params.fetch('title').title_case()
  erb(:title)
end

get('/scrabble') do
  erb(:scrabble)
end

get('/scrabblescore') do
  @score = params.fetch('word').scrabble()
  erb(:scrabblescore)
end
