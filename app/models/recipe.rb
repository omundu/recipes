class Recipe < ActiveRecord::Base

  def self.find_recipe_to_view
    find(:all, :order => "Name")
  end
  
  #validations
  validates_presence_of :Name, :username, :ingredients
  validates_presence_of :Instructions, :cooking_time, :image_url

  validates_uniqueness_of :Name
  
  validates_numericality_of :cooking_time

  validates_format_of :image_url,
                      :with => %r{\.(gif|jpg|png)$}i,
                      :message => 'must be a URL for GIF, JPG or PNG image'

  #association with comments
  has_many :comments
end