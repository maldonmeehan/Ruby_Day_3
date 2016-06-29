require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the rock paper scissors path', {:type => :feature}) do
  it('processes input from two players to determine a winner in "Rock Paper Scissors"') do
    visit('/rock_paper_scissors')
    select "Rock", :from => 'player1'
    select "Paper", :from => 'player2'
    click_button('Play!')
    expect(page).to have_content('Player 2 Wins')
  end
end
