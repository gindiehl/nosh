require 'rails_helper'

describe "the admin path" do
  it "allows an admin to sign in" do
    user = FactoryGirl.create(:user)
    visit '/'
    click_on 'Sign in'
    expect(page).to have_content "Sign in"
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => user.password
    click_button 'Sign in'
    expect(page).to have_content "Nom Nom Nosh"
  end

  it "allows admin to add a new service" do
    user = FactoryGirl.create(:user)
    service = FactoryGirl.create(:service)
    visit '/'
    click_on 'Sign in'
    expect(page).to have_content "Sign in"
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => user.password
    click_button 'Sign in'
    expect(page).to have_content "Nom Nom Nosh"
    save_and_open_page
    click_on "Add a New Service"
    fill_in 'Name', :with => service.name
    fill_in 'Description', :with => service.description
    fill_in 'Price', :with => service.price
    click_button "Create Service"
  end
end
