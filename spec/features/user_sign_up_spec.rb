require 'rails_helper'

describe "the user sign up path" do
  it "allows a user to sign up" do
    user = FactoryGirl.create(:user)
    visit '/'
    click_link 'Sign up!'
    expect(page).to have_content 'Sign up'
    fill_in 'user[user_name]', :with => 'jin'
    fill_in 'user[email]', :with => 'jin@jin.com'
    fill_in 'user[password]', :with => 'jinjin'
    fill_in 'user[password_confirmation]', :with => 'jinjin'
    click_button 'Sign Up'
    save_and_open_page
    expect(page).to have_content "You've successfully signed up!"
  end
end
