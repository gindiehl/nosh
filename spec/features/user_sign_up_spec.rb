require 'rails_helper'

describe "the user sign up path" do
  it "allows a user to sign up" do
    user = FactoryGirl.create(:user)
    service = FactoryGirl.create(:service)
    visit '/'
    click_link 'Sign up!'
    expect(page).to have_content 'Sign up'
    fill_in 'user[user_name]', :with => user.user_name
    fill_in 'user[email]', :with => user.email
    fill_in 'user[password]', :with => user.password
    fill_in 'user[password_confirmation]', :with => user.password_confirmation
    click_button 'Sign Up'
    save_and_open_page
    expect(page).to have_content 'Nom Nom Nosh'
  end
end
