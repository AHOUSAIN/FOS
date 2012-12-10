Given /^an initial business$/ do
  @n2 = FactoryGirl.create(:customer)
  @n3 = FactoryGirl.create(:customer, :first_name => "Youcef", :last_name => "Ago", :email => "youcefago@gmail.com", :phone => "97433750927", :address => "Al Nasr")
end

Given /^I am on the 'Customer' page$/ do
  visit customers_path
end

Then /^in the "(.*?)", I should see "(.*?)"$/ do |tagname, value|
  page.should have_css(tagname, :text => value)
end

Then /^in "(.*?)", I should see "(.*?)"$/ do |arg1, arg2|
  page.should have_css(arg1, :text => arg2)
end

Then /^in the "(.*?)", I should see a link to "(.*?)"$/ do |tagname, value|
  within tagname do
    page.should have_link value
  end
end

Given /^I am on the 'new Customer' page$/ do
  visit new_customer_path
end

When /^I enter "(.*?)" for "(.*?)"$/ do |value, field|
  fill_in field, :with => value
end

When /^I click "(.*?)"$/ do |output|
  click_button output
end

Then /^I should be able to see "(.*?)"$/ do |value|
  page.should have_content value
end

When /^I follow the "(.*?)" link for "(.*?)"$/ do |link, cell_value|
  within_table('List') do
      within('tr', :text => cell_value) do
        find('a', :text => link).click 
      end
    end 
  end

  When /^I click the button "(.*?)"$/ do |output|
    click_button output
  end

  Then /^I should see "(.*?)"$/ do |arg1|
      page.should have_content arg1
    end

    Then /^I should not see "(.*?)"$/ do |arg1|
      page.should_not have_content arg1
    end