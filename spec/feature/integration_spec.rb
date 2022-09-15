# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid title inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'jk rowling'
    #fill_in 'Price', with: 20
    #fill_in 'Date', with: Date.new(2004, 11, 24)
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('jk rowling')
  end

  scenario 'valid author inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'jk rowling'
    #fill_in 'Price', with: 20
    #fill_in 'Date', with: Date.new(2004, 11, 24)
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('jk rowling')
  end

  scenario 'valid price inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'jk rowling'
    fill_in 'Price', with: 20
    fill_in 'Date', with: Date.new(2004, 11, 24)
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content(20)
  end

  scenario 'valid date inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'jk rowling'
    fill_in 'Price', with: 20
    fill_in 'Date', with: Date.new(2004, 11, 24)
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content(Date.new(2004, 11, 24))
  end
end