class CreateDrinkIngredients < ActiveRecord::Migration
  def self.up
    create_table :drink_ingredients do |t|
      t.interger :drink_id
      t.string :amount
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :drink_ingredients
  end
end
