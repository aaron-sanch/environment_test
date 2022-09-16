# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid title inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'jk rowling'
    fill_in 'Price', with: 2
    select "2001", :from => "book_date_1i"
    select "July", :from => "book_date_2i"
    select "1", :from => "book_date_3i"
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('jk rowling')
  end

  scenario 'valid author inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'jk rowling'
    fill_in 'Price', with: 2
    select "2001", :from => "book_date_1i"
    select "July", :from => "book_date_2i"
    select "1", :from => "book_date_3i"
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('jk rowling')
  end

  scenario 'valid price inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'jk rowling'
    fill_in 'Price', with: 2
    select "2001", :from => "book_date_1i"
    select "July", :from => "book_date_2i"
    select "1", :from => "book_date_3i"
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content(2)
  end

  scenario 'valid date inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'jk rowling'
    fill_in 'Price', with: 2
    select "2001", :from => "book_date_1i"
    select "July", :from => "book_date_2i"
    select "1", :from => "book_date_3i"
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('01')
    expect(page).to have_content('07')
    expect(page).to have_content('2001')
  end
end