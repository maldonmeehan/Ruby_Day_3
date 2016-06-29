require('sinatra')
require('sinatra/reloader')
require('./lib/title_case')
require('./lib/scrabble')
require('./lib/rock_paper_scissors')
require('./lib/palindrome')
also_reload('lib/**/*.rb')

get('/') do
  @page_title="home"
  erb(:index)
end

get('/palindrome') do
  @page_title="palindrome"
  erb(:palindrome)
end

post('/palindrome') do
  @page_title="palindrome"
  word = params.fetch('word')
  @result = (params.fetch('word').palindrome?()) ? "#{word} is a palindrome" : "#{word} is not a palindrome"
  erb(:palindrome)
end

get('/titlecase') do
  @page_title="titlecase"
  erb(:titlecase)
end

get('/title') do
  @page_title="titlecase"
  @title = params.fetch('title').title_case()
  erb(:title)
end

get('/scrabble') do
  @page_title="scrabble"
  erb(:scrabble)
end

get('/scrabblescore') do
  @page_title="scrabble"
  @score = params.fetch('word').scrabble()
  erb(:scrabblescore)
end

get('/rock_paper_scissors') do
  @page_title="rps"
  erb(:rock_paper_scissors)
end

get('/rps_winner') do
  @page_title="rps"
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
