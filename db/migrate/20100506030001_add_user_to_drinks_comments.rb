class AddUserToDrinksComments < ActiveRecord::Migration
  def self.up
    add_column :drink_comments, :user, :string
  end

  def self.down
    remove_column :drink_comments, :user
  end
end
