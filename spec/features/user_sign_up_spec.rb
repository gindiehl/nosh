require 'rails_helper'

describe "the user sign up path" do
  it "allows a user to sign up" do
    visit '/'
    click_on 'Sign up!'
    user = FactoryGirl.build(:user)
    fill_in 'User name', with: user.user_name
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    fill_in 'Password confirmation', with: user.password
    click_button 'Sign Up'
    expect(page).to have_content "You've successfully signed up!"
  end
end
