require 'rails_helper'

describe "add a review path" do
  it "allows an authorized user to add a review to a service" do
    user = FactoryGirl.create(:user)
    service = FactoryGirl.create(:service)
    visit services_path
    click_link "Sign in"
    expect(page).to have_content "Sign in"
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => user.password
    click_button 'Sign in'
    click_on 'Martini'
    click_link "Add a review"
    expect(page).to have_content "Author"
    fill_in 'review[content]', :with => "Nom Nom"
    fill_in 'review[author]', :with => "Nosher"
    click_button "Submit Review"
    expect(page).to have_content "Your review was successfully added!"
  end
end
