class Post < ActiveRecord::Base
  has_many :comments
  
  validates :title, :presence => true, :length => { :within => 5..100 }
  validates :body, :presence => true, :length => { :within => 10..1000 }

end
