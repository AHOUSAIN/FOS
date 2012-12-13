class Cart < ActiveRecord::Base
has_secure_password
attr_accessible :email, :menu_items, :customer_id,:password_digest,:password, :password_confirmation
belongs_to :customer, :foreign_key => "customer_id"
has_many :foods


  
  
validates_presence_of :password, :on => :create
validates :email,:password_digest, :presence => true
validates_format_of :email, :with => /^[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mi|biz|info|qa))$/i, :message => "is not a valid format"


  
end



