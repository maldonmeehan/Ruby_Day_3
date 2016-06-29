require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the scrabble path', {:type => :feature}) do
  it('processes the user entry and returns a scrabble score') do
    visit('/scrabble')
    fill_in('word', :with => 'cat')
    click_button('Send')
    expect(page).to have_content('5')
  end
end
