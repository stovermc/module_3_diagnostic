require 'rails_helper'

describe "when a user visits "/"" do
  context "there is a form requiring a zipcode", vcr: true do
    visit "/"
    expect(page).to have_field('Zipcode')
    expect(page).to have_button('Locate')
  end
end
As a user
When I visit "/"
And I fill in the search form with 80203
And I click "Locate"
Then I should be on page "/search" with parameters visible in the url
Then I should see a list of the 10 closest stations within 6 miles sorted by distance
And the stations should be limited to Electric and Propane
And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
