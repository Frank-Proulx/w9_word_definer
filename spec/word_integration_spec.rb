require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('create an word path', {:type => :feature}) do
  it('creates a word which then displays on the words page') do
    visit('/words')
    click_on('Add a new word')
    fill_in('word', :with => 'interesting')
    click_on('Go!')
    expect(page).to have_content('interesting')
  end
end