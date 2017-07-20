require 'rails_helper'

describe "the user authorization path" do
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
    expect(page).to have_content 'Nom Nom Nosh'
  end

  it "allows a user to sign in" do
    user = FactoryGirl.create(:user)
    service = FactoryGirl.create(:service)
    visit '/'
    click_link 'Sign in'
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => user.password
    click_button 'Sign in'
    expect(page).to have_content "You've signed in."
  end
end
