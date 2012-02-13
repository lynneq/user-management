class User < ActiveRecord::Base
  
  validates_presence_of :name
  validates_uniqueness_of :name
  
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create  
  
  validates_presence_of :email  
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  
end