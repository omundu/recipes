class CreateDrinkComments < ActiveRecord::Migration
  def self.up
    create_table :drink_comments do |t|
      t.interger :drink_id
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :drink_comments
  end
end
