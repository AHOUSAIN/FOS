class Food < ActiveRecord::Base
  attr_accessible :available, :name, :price

 validates :name, :presence => true
 scope :alphabetize, order('name')
 
validates :price, :numericality => {:greater_than => 0, :only_integer => true,:allow_blank => true, :allow_nil => true}
 
 
 

scope :available, where('available = ?',true)
end