class Account < ActiveRecord::Base
  belongs_to :user, :dependent => :destroy
  
  validates_presence_of :name
  validates_uniqueness_of :name

  validates_presence_of :level     
  
  def self.has_account_name?(account_name)
    if self.where(:name => account_name).size > 0 
      return true
    end
    return false    
  end
end     