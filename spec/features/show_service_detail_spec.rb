require 'rails_helper'

describe "the show service detail path" do
  it "routes to service details page" do
    service = FactoryGirl.create(:service)
    visit '/'
    click_link service.name
    expect(page).to have_content service.name
  end

  it "provides an error message to an unauthorized user" do
    service = FactoryGirl.create(:service)
    visit '/services/new'
    expect(page).to have_content "You aren't authorized to visit that page."
  end
end
