require('sinatra')
require('sinatra/reloader')
require('./lib/title_case')
require('./lib/scrabble')
require('./lib/rock_paper_scissors')
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

get('/rock_paper_scissors') do
  erb(:rock_paper_scissors)
end

get('/rps_winner') do

  @player1 = params.fetch('player1')
  @player1_name = "Player 1"
  @player2 = params.fetch('player2')
  comp_opts = ["rock", "paper", "scissors"]
  if @player2 == "none"
    @player2 = comp_opts[rand(0..2)]
    @player2_name = "Computer"
  else
    @player2_name = "Player 2"
  end

  if @player1 == @player2
    @winner = "Tie!"
  elsif @player1.rock_paper_scissors?(@player2)
    @winner = "Player 1 Wins"
  else
    @winner = "Player 2 Wins"
  end
  erb(:rps_winner)
end
