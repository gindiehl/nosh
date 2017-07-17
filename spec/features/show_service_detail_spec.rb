require 'rails_helper'

describe "the show service detail path" do
  it "routes to service details page" do
    service = FactoryGirl.create(:service)
    visit '/'
    click_link 'Martini'
    expect(page).to have_content 'Martini'
  end
end
