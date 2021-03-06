require 'spec_helper'

describe Food do
describe "Validation" do
it{should validate_presence_of(:name)}

it "should have the correct associations" do
  should belong_to(:cart)
end  

end
       describe "Creating Three Food Stuff" do
          before(:each) do
            @n2 = FactoryGirl.create(:customer, :first_name => "Nawal", :last_name => "Behih", :phone => "97444991457")
            @cart = FactoryGirl.create(:cart, :customer => @n2)
            @apple = FactoryGirl.create(:food, :cart => @cart)
            @banana = FactoryGirl.create(:food, :name => "Banana",:cart => @cart ,:available => true)
            @burger = FactoryGirl.create(:food, :cart => @cart ,:name => "Burger", :price => 12, :available => true)
          end 
          it "All three food are valid" do
             @apple.should be_valid
             @banana.should be_valid
             @burger.should be_valid
           end
           
           it "has the right attribute information" do
               @apple.name.should == "Apple"
               @banana.name.should == "Banana"
               @burger.name.should == "Burger"
             end
             it "returns all the record in alphabetical order" do
                  Food.alphabetize.map{|o| o.name}.should == ["Apple","Banana","Burger"]
                end
                it "returns the right number of available " do
                     Food.available.size.should == 3
                   end
                   it "should valiate the numericality of price"do
                        should validate_numericality_of(:price)
                      end
                      it "should allow valid number of price" do
                          should allow_value(1).for(:price)
                          should allow_value(100).for(:price)
                          should allow_value(500).for(:price)
                          should allow_value(3.2).for(:price)
                          
                        end
                        it "should not allow valid number of price" do
                             should_not allow_value(0).for(:price)
                             should_not allow_value(-1).for(:price)
                             should_not allow_value(-3.1413).for(:price)
                           end
end
end
