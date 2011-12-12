class Website < ActiveRecord::Base
  
  url_regexp = /\Awww\.[a-z]+\.[com|net|mil|edu|gov|org|biz|xxx]/i
  type_regexp = /\A[video|audio|games|programs|torrents]/i
  
  validates :name, :presence => true,
                   :length => { :maximum => 50}
                   
  validates :kind, :presence => true,
                   :format   => { :with => type_regexp}
             
  validates :url, :presence => true,
                  :format   => { :with => url_regexp},
                  :uniqueness => {:case_sensitive => false}
                  
  def rate(website)
    ratings.create!(:website_id => website.id)
  end
end
