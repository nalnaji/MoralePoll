class Review < ActiveRecord::Base
  validates_presence_of :rating
  def self.rating_average
    sum = 0
    Review.all.each do |review|
      sum += review.rating 
    end
    sum / Review.count.to_f
  end
end
