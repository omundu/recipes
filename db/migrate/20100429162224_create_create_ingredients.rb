class CreateCreateIngredients < ActiveRecord::Migration
  def self.up
    create_table :create_ingredients do |t|
      t.int :ingredients_id
      t.string :amount
      t.string :unit
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :create_ingredients
  end
end
