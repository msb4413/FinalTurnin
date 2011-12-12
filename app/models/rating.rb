class Rating < ActiveRecord::Base
  
  attr_accessible :user_id
  attr_accessible :website_id
  attr_accessible :score
  

  
  score_regexp = /\A[0-5]/i
  
    validates :score, :presence => true,
              :format   => { :with => score_regexp}
end
