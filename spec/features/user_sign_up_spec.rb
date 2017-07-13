require 'rails_helper'

describe "the user sign up path" do
  it "allows a user to sign up" do
    visit '/'
    click_on 'Sign up!'
    save_and_open_page
    expect(page).to have_content 'Sign up'
    fill_in 'Avatar', with: 'thisone@url'
    fill_in 'User Name', with: 'jin'
    fill_in 'Email', with: 'jin@jin.com'
    fill_in 'Password', with: 'jinjin'
    fill_in 'Password confirmation', with: 'jinjin'
    click_on 'Sign Up'
    expect(page).to have_content "You've successfully signed up!"
  end
end
