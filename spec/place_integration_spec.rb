require ('capybara/rspec')
require ('./app')

Capybara.app = Sinatra::Application
set(:show_expectations, false)

describe('place_save path', {:type => :feature}) do
  it('show a page with a list of places, an input field and a save button and after submitting shows a confirmation page') do
    visit('/')
    fill_in('name', :with => 'San Testo')
    click_button('save_place')
    expect(page).to have_content("Place saved.")
  end
end
