require 'spec_helper'

describe Customer do
  describe "Validation Macros" do
         it {should validate_presence_of(:first_name)}
         it {should validate_presence_of(:last_name)}
         it {should validate_presence_of(:email)}
         it {should validate_presence_of(:phone)}
         it {should validate_presence_of(:address)}
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

     describe "Validates good phone numbers" do
         it {should allow_value("97444324295").for(:phone)}
         end

     describe "Rejects bad phone numbers" do
         it {should_not allow_value("800-EAT-FOOD").for(:phone)}
         end

     
     describe "Create objects with FactoryGirl" do
         before(:each)do

             @n2 = FactoryGirl.create(:customer, :first_name => "Nawal", :last_name => "Behih", :phone => "97444991457")
             @n3 = FactoryGirl.create(:customer, :first_name => "Youcef", :last_name => "Ago", :email => "youcefa@gmail.com", :address => "Al Nasr")
         end
     it "create the factory object correctly" do

             @n2.should be_valid
             @n3.should be_valid
         end

     it "should have the right attributes" do
             @n2.first_name.should =="Nawal"
             @n3.first_name.should == "Youcef"
         end

             it "should remove all + and . from phone before save" do
                 @n2.phone.should == "97444991457"
             end

             it "should return the proper name as first_name last_name" do
                 @n2.proper_name.should == "Nawal Behih"
                 @n3.proper_name.should == "Youcef Ago"
                 end

             it "should return the name as last_name, first_name" do
                 @n2.name.should == "Behih, Nawal"
                 end

         it "should return the names in alphabetical order" do
             Customer.alphabetical.map{|o| o.first_name}.should == ["Nawal" , "Youcef"]
         end 

         end
     end

