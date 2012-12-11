
Given /^I am on the 'foods' page$/ do
        visit foods_path
end




        

        
        
        Given /^I am on the 'new food' page$/ do
                visit new_food_path
        end

        

        When /^I check "(.*?)"$/ do |arg1|
                check arg1
        end

        When /^I click button "(.*?)"$/ do |arg1|
                click_button arg1
        end

      
     
        When /^I change the price "(.*?)" to "(.*?)"$/ do |oldprice, newprice|
        fill_in "Price", :with => newprice
        end
       
        


