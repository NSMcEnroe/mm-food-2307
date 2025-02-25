require "rails_helper"

feature "user can search for foods using the search bad" do
  scenario "user submits valid state name and clicks on Find Parks", :vcr do
    visit "/"

    fill_in :q, with: "sweet potatoes"

    click_on "Search"

    expect(current_path).to eq(foods_path)
    expect(page).to have_content("8901020020844")
    expect(page).to have_content("SWEET POTATOES")
    expect(page).to have_content("NOT A BRANDED ITEM")
    expect(page).to have_content("ORGANIC SWEET POTATOES")
  end
end

# As a user,
# When I visit "/"
# And I fill in the search form with "sweet potatoes"
# (Note: Use the existing search form)
# And I click "Search"
# Then I should be on page "/foods"
# Then I should see a total of the number of items returned by the search.
# (sweet potatoes should find more than 30,000 results)
# Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"

# And for each of the foods I should see:
# - The food's GTIN/UPC code
# - The food's description
# - The food's Brand Owner
# - The food's ingredients