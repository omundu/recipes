class Drink < ActiveRecord::Base

  def self.find_drink_to_view
    find(:all, :order => "name")
  end

  #validations
  validates_presence_of :name, :username, :ingredients
  validates_presence_of :instructions, :prep_time
  validates_uniqueness_of :name
  validates_numericality_of :prep_time

  #association with comments
  has_many :drink_comments
end
