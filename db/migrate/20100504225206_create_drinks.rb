class CreateDrinks < ActiveRecord::Migration
  def self.up
    create_table :drinks do |t|
      t.text :name
      t.text :username
      t.text :ingredients
      t.text :instructions
      t.text :description
      t.int :prep_time
      t.text :pairs

      t.timestamps
    end
  end

  def self.down
    drop_table :drinks
  end
end
