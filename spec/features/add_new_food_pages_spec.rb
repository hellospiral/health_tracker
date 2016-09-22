require 'rails_helper'

describe 'the add a new food path', js: true do
  it 'adds a food to the database' do
    user = FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'
    visit user_path(user)
    click_on("Add a new food")
    fill_in 'Name', :with => "Turtle Soup"
    fill_in "Calories per serving", :with => "100"
    fill_in "Serving size", :with => "1 cup"
    click_on 'Create Food'
    expect(page).to have_select('consumption[food_id]', :options => ['Turtle Soup'])
  end
end
