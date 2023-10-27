class FoodsController < ApplicationController
  def index
    @facade = FoodFacade.new(params[:q])
  end
end