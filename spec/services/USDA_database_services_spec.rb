require 'rails_helper'

describe USDADatabaseService do
  context "class methods" do
    context "#foods with ingredient" do
      it "returns all foods with that ingredient", :vcr do
        search = USDADatabaseService.new.foods_with_ingredient("apple")

        expect(search).to be_a Hash
        expect(search[:foods]).to be_an Array

        food_data = search[:foods].first

        expect(food_data).to have_key :gtinUpc
        expect(food_data[:gtinUpc]).to be_a(String)

        expect(food_data).to have_key :description
        expect(food_data[:description]).to be_a(String)

        expect(food_data).to have_key :brandOwner
        expect(food_data[:brandOwner]).to be_a(String)

        expect(food_data).to have_key :ingredients
        expect(food_data[:ingredients]).to be_a(String)
      end
    end
  end
end