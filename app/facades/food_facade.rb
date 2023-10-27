class FoodFacade
  def initialize(ingredient)
    @ingredient = ingredient
  end

  def all_foods

    data = USDADatabaseService.new.foods_with_ingredient(@ingredient)

    foods = data[:foods].first(10).map do |food_data|
      Food.new(food_data)
    end
  end
end