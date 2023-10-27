require  "rails_helper"

RSpec.describe Food do
  it "exists" do
    attrs = {
        gtinUpc: "123",
        description: "peaches",
        brandOwner: "Peachy",
        ingredients: "only peaches"
    }

    food = Food.new(attrs)

    expect(food).to be_a Food
    expect(food.code).to eq("123")
    expect(food.description).to eq("peaches")
    expect(food.brand).to eq("Peachy")
    expect(food.ingredients).to eq("only peaches")
  end
end