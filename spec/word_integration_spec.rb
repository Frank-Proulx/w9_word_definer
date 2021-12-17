require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('create an word path', {:type => :feature}) do
  it('creates a word which then displays on the words page') do
    visit('/words')
    click_on('Add a new word')
    fill_in('word', :with => 'unusual')
    click_on('Go!')
    expect(page).to have_content('unusual')
  end
end

describe('create a definition for a word', {:type => :feature}) do
  it('creates a definition for a word which then displays on the page for that word') do
    visit('/words')
    click_on('Add a new word')
    fill_in('word', :with => 'interesting')
    click_on('Go!')
    click_on('interesting')
    fill_in('definition', :with => 'very cool')
    click_on('Add definition!')
    expect(page).to have_content('very cool')
  end
end

describe('update a definition for a word', {:type => :feature}) do
  it('updates a definition for a word which then displays on the page for that definition') do
    visit('/words')
    click_on('Add a new word')
    fill_in('word', :with => 'mouse')
    click_on('Go!')
    click_on('mouse')
    fill_in('definition', :with => 'a teacup')
    click_on('Add definition!')
    click_on('a teacup')
    fill_in('definition', :with => 'a tabby')
    click_on('Update definition')
    expect(page).to have_content('a tabby')
  end
end

describe('delete a definition for a word', {:type => :feature}) do
  it('deletes a definition for a word and then returns to the page for that word') do
    visit('/words')
    click_on('Add a new word')
    fill_in('word', :with => 'dewy')
    click_on('Go!')
    click_on('dewy')
    fill_in('definition', :with => 'a big cat')
    click_on('Add definition!')
    click_on('a big cat')
    click_on('Delete definition')
    expect(page).to have_no_content('a big cat')
  end
end