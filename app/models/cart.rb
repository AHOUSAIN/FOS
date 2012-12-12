class Cart < ActiveRecord::Base
has_secure_password
attr_accessible :email, :menu_items, :password_digest
has_many :foods
belongs_to :customer
  
  
validates_presence_of :password, :on => :create
  
  
end
