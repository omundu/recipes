class AddRecipeIdToDrinkComments < ActiveRecord::Migration
  def self.up
    add_column :drink_comments, :recipe_id, :integer
  end

  def self.down
    remove_column :drink_comments, :recipe_id
  end
end
