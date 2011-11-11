class User < ActiveRecord::Base
  attr_accessible :name, :email

  email_allowed = /\A[+.\w\d\-\_]+@[a-z\d]+\.[a-z]+\z/i  

  validates :name, :presence => true,
                   :length   => {:maximum => 50}
  validates :email, :presence => true,
  :format => {:with =>email_allowed},
  :uniqueness => {:case_sensitive => false}
  
  
end
