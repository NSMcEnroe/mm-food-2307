require 'rails_helper'

RSpec.describe FoodFacade do
  describe '#all_foods' do
    it 'returns an array of Food objects', :vcr do
        food_facade = FoodFacade.new("apple")

        foods = food_facade.all_foods

        expect(foods).to be_an(Array)
        expect(foods.first).to be_a(Food)
    end
  end
end