class CookbookController < ApplicationController
  def index
    @recipes = Recipe.find_recipe_to_view
    
    @drinks = Drink.find_drink_to_view
  end

  def open
  end

  def print
  end

end
