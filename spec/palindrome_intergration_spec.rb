require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the palindrome path', {:type => :feature}) do
  it('takes input from the user and determines whether the text is a palindrome') do
    visit('/palindrome')
    fill_in('word', :with => 'hannah')
    click_button('Send')
    expect(page).to have_content('hannah is a palindrome')
  end
end
