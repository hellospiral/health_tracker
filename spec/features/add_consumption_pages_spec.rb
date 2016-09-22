require 'rails_helper'

describe 'the add a consumption path', js: true do
  it 'adds a new consumption to a users page' do
    consumption = FactoryGirl.create(:consumption)
    pizza = FactoryGirl.create(:food, :name => 'Pizza', :serving_size => '1 slice', :calories_per_serving => 120)
    visit new_user_session_path
    fill_in 'Email', with: consumption.user.email
    fill_in 'Password', with: consumption.user.password
    click_button 'Log in'
    visit user_path(consumption.user)
    select('Pizza', :from => 'consumption[food_id]')
    click_on('Submit')
    expect(page).to have_content('Pizza')
  end
end
