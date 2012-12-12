class Customer < ActiveRecord::Base
  attr_accessible :address, :email, :first_name, :last_name, :phone
  has_one :cart
  
  
  validates :first_name, :last_name, :email, :phone, :address, :presence => true
  validates_format_of :email, :with=> /^[\w]([^@\s,:]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info|qa))$/i, :message=> "is not a valid format"
  validates_format_of :phone, :with => /^(\+?\d{11}|\+?\d{3}?[-.]\d{4}[-.]\d{4})$/, :message => "is not a valid format"
  scope :alphabetical, order('last_name DESC, first_name DESC')
  def proper_name
      first_name + " " + last_name
      end

  def name
      last_name + ", " + first_name
      end


      private
      def format_phone
          phone = self.phone.to_s
          phone.gsub!(/[^0-9]/, "")
          self.phone = phone
      end
  
end
