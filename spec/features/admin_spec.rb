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
    expect(page).to have_content "Hello Admin!"
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
    expect(page).to have_content "Hello Admin!"
    click_on "Add a New Service"
    fill_in 'Name', :with => service.name
    fill_in 'Description', :with => service.description
    fill_in 'Price', :with => service.price
    click_button "Create Service"
  end

  it "allows admin to edit a service" do
    user = FactoryGirl.create(:user)
    service = FactoryGirl.create(:service)
    visit '/'
    click_on 'Sign in'
    expect(page).to have_content "Sign in"
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => user.password
    click_button 'Sign in'
    expect(page).to have_content "Hello Admin!"
    click_on "Martini"
    click_link "Edit Service"
    fill_in 'Name', :with => service.name
    fill_in 'Description', :with => service.description
    fill_in 'Price', :with => service.price
    click_button "Update Service"
    expect(page).to have_content "Service successfully updated!"
  end

  it "allows admin to delete a service" do
    user = FactoryGirl.create(:user)
    service = FactoryGirl.create(:service)
    visit '/'
    click_on 'Sign in'
    expect(page).to have_content "Sign in"
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => user.password
    click_button 'Sign in'
    expect(page).to have_content "Hello Admin!"
    click_on "Martini"
    click_link "Delete Service"
    expect(page).to have_content "Add a New Service"
  end

  it "allows admin to delete a review" do
    user = FactoryGirl.create(:user)
    service = FactoryGirl.create(:service)
    visit '/'
    click_on 'Sign in'
    expect(page).to have_content "Sign in"
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => user.password
    click_button 'Sign in'
    expect(page).to have_content "Hello Admin!"
    click_on service.name
    click_link "Add a review"
    fill_in 'review[content]', :with => "Nom Nom"
    fill_in 'review[author]', :with => "Nosher"
    click_button "Submit Review"
    click_on "Delete Review"
    expect(page).to have_content "Review successfully deleted!"
  end
end
