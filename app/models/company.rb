class Company < ActiveRecord::Base
  attr_accessible :name
  
  has_many :contacts
  before_save :replace_ampersands
  
  def replace_ampersands
    name.gsub!("&", "and")
  end
  
end
