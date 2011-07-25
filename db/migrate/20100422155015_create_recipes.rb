class CreateRecipes < ActiveRecord::Migration
  def self.up
    create_table :recipes do |t|
      t.string :Name
      t.text :Instructions
      t.string :image_url

      t.timestamps
    end
  end

  def self.down
    drop_table :recipes
  end
end
