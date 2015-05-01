require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word input route path', {:type => :feature}) do
  it('processes the user entry and saves and returns the word') do
    visit('/')
    fill_in("word", :with => "Puppy")
    click_button('Add Word To The Dictionary')
    expect(page).to have_content("Puppy")
  end
end
