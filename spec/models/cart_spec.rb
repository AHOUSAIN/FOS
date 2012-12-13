require 'spec_helper'

describe Cart do
   
  
  describe "Validation Macros" do
         it {should validate_presence_of(:email)}
         it {should validate_presence_of(:password_digest)}
         end

     describe "Validates good emails" do
         it {should allow_value("fred@fred.com").for(:email)}
         it {should allow_value("fred@qatar.cmu.edu").for(:email)}
         it {should allow_value("my_fred@fred.org").for(:email)}
         it {should allow_value("fred123@fred.gov").for(:email)}
         it {should allow_value("my.fred@fred.net").for(:email)}
         end

     describe "Rejects bad emails" do
         it {should_not allow_value("fred").for(:email)}
         it {should_not allow_value("fred@fred,com").for(:email)}
         it {should_not allow_value("fred@fred.uk").for(:email)}
         it {should_not allow_value("my fred@fred.com").for(:email)}
         it {should_not allow_value("fred@fred.con").for(:email)}
         end
  
  describe "create our factories " do
    before(:each) do
      @n2 = FactoryGirl.create(:customer, :first_name => "Nawal", :last_name => "Behih", :phone => "97444991457")
      @cart = FactoryGirl.create(:cart, :customer => @n2)
      
  end
   it"should create factories correctly" do
     @n2.should be_valid
     @cart.should be_valid
   end
   
   it "should have proper asscciations" do
     should have_many(:foods)

   end
end
end
