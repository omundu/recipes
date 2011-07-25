class AddPrepTimeToDrinks < ActiveRecord::Migration
  def self.up
    add_column :drinks, :prep_time, :integer
  end

  def self.down
    remove_column :drinks, :prep_time
  end
end
