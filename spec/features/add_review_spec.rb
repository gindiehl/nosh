require 'rails_helper'

describe "add a review path" do
  it "allows an authorized user to add a review to a service" do
    user = FactoryGirl.create(:user)
    service = FactoryGirl.create(:service)
    visit services_path
    click_link "Add a review"
    expect(page).to have_content "Author"
    fill_in 'Content', with: "Nom Nom"
    fill_in 'Author', with: "Nosher"
    click_button "Submit Review"
    expect(page).to have_content "Your review was successfully added!"
  end
end
