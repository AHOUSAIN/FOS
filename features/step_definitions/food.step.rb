
Given /^an initial business$/ do
        @apple = FactoryGirl.create(:food)
            @banana = FactoryGirl.create(:food, :name => "Banana", :available => true)
            @burger = FactoryGirl.create(:food, :name => "Burger", :price => 12, :available => true)
end

Given /^I am on the 'foods' page$/ do
        visit foods_path
end

Then /^in the "(.*?)", I should see "(.*?)"$/ do |arg1, arg2|
        page.should have_css(arg1, :text => arg2 )
end

Then /^in the "(.*?)", I should see a link to "(.*?)"$/ do |arg1, arg2|
        within arg1 do
          page.should have_link arg2
        end
        end
        
        
        
        
        Given /^I am on the 'new food' page$/ do
                visit new_food_path
        end

        When /^I enter "(.*?)" for "(.*?)"$/ do |arg1, arg2|
                fill_in arg2, :with =>  arg1
        end

        When /^I check "(.*?)"$/ do |arg1|
                check arg1
        end

        When /^I click button "(.*?)"$/ do |arg1|
                click_button arg1
        end

        Then /^I should see "(.*?)"$/ do |arg1|
                page.should have_content arg1
        end
        
        When /^I follow the "(.*?)" link for "(.*?)"$/ do |link, cell_value|
         find(:xpath, "//tr[contains(.,'#{cell_value}')]").click_link link
        end
     
        When /^I change the price "(.*?)" to "(.*?)"$/ do |oldprice, newprice|
        fill_in "Price", :with => newprice
        end
       
        When /^I click the button "(.*?)"$/ do |buttonname|
                click_button buttonname
        end
        
        Then /^I should not see "(.*?)"$/ do |arg1|
                page.should_not have_content(arg1) 
        end


