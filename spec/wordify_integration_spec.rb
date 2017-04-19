require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('The numbers to words path', {:type => :feature}) do
  it('processes the user entry in numeric form and returns the written form of the number') do
    visit('/')
    fill_in('number', :with => '1000001')
    click_button('Submit Number')
    expect(page).to have_content('one million one')
  end


end
