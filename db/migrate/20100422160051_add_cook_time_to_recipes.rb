class AddCookTimeToRecipes < ActiveRecord::Migration
  def self.up
    add_column :recipes, :cooking_time, :int
    add_column :recipes, :username, :string
  end

  def self.down
    remove_column :recipes, :username
    remove_column :recipes, :cooking_time
  end
end
