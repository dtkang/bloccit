class Rating < ActiveRecord::Base
  has_many :topics
  has_many :posts
  
  enum severity: [ :PG, :PG13, :R]
  
  def self.update_rating(rating_string)
    
  end
end
