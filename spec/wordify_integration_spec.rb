require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the scrabble path', {:type => :feature}) do
  it('processes the user entry and return the scrabble score') do
    visit('/')
    fill_in('word', :with => 'hello')
    click_button('Submit2')
    expect(page).to have_content('8')
  end

  it('processes a more advanced scrabble word into a larger score')
end
