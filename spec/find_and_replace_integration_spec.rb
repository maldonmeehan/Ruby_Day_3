require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the find_and_replace path', {:type => :feature}) do
  it('takes input from the user and swaps user input with another user input') do
    visit('/find_and_replace')
    fill_in('phrase', :with => 'My Dog is a Cat')
    fill_in('from', :with => 'Dog')
    fill_in('to', :with => 'cat')
    click_button('Send')
    expect(page).to have_content('My cat is a cat')
  end
end
