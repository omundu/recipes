class AddRecipeIdToDrinkIngredients < ActiveRecord::Migration
  def self.up
    add_column :drink_ingredients, :recipe_id, :integer
  end

  def self.down
    remove_column :drink_ingredients, :recipe_id
  end
end
