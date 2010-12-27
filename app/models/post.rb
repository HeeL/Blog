class Post < ActiveRecord::Base
  has_many :comments, :dependent => :delete_all
  
  validates :title, :presence => true, :length => { :within => 5..100 }
  validates :body, :presence => true, :length => { :within => 10..1000 }

  belongs_to :user

end
