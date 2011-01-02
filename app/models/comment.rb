class Comment < ActiveRecord::Base

  validates :name, :presence => true, :length => { :within => 3..100 }
  validates :text, :presence => true, :length => { :within => 5..1000 }
  validates :email, :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }  
            
  belongs_to :post
  
end
