require 'rails_helper'

describe "the show service details path" do
  it "routes to service details page" do
    visit '/'
    service = FactoryGirl.create(:service)
    click_link 'Charlie'
    expect(page).to have_content 'Charlie'
  end
end
